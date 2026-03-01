import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

import 'command.dart';
import 'config.dart';
import 'events.dart';
import 'local_workspace.dart';
import 'operation_results.dart';

/// Callback invoked for each parsed Pulumi engine event.
typedef AutomationEngineEventHandler =
    void Function(AutomationEngineEvent event);

/// A resource specification passed to `pulumi import`.
class AutomationImportResource {
  const AutomationImportResource({
    required this.type,
    required this.name,
    this.id,
    this.parent,
    this.provider,
    this.version,
    this.pluginDownloadUrl,
    this.logicalName,
    this.properties,
    this.component,
    this.remote,
  });

  final String type;
  final String name;
  final String? id;
  final String? parent;
  final String? provider;
  final String? version;
  final String? pluginDownloadUrl;
  final String? logicalName;
  final List<String>? properties;
  final bool? component;
  final bool? remote;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'type': type,
      'name': name,
      if (id != null) 'id': id,
      if (parent != null) 'parent': parent,
      if (provider != null) 'provider': provider,
      if (version != null) 'version': version,
      if (pluginDownloadUrl != null) 'pluginDownloadURL': pluginDownloadUrl,
      if (logicalName != null) 'logicalName': logicalName,
      if (properties != null) 'properties': properties,
      if (component != null) 'component': component,
      if (remote != null) 'remote': remote,
    };
  }
}

/// Automation stack handle scoped to a [LocalWorkspace].
class Stack {
  Stack(this.name, this.workspace);

  /// Creates a new stack.
  static Future<Stack> create(
    String stackName,
    LocalWorkspace workspace,
  ) async {
    await workspace.createStackInWorkspace(stackName);
    return Stack(stackName, workspace);
  }

  /// Selects an existing stack.
  static Future<Stack> select(
    String stackName,
    LocalWorkspace workspace,
  ) async {
    await workspace.selectStackInWorkspace(stackName);
    return Stack(stackName, workspace);
  }

  /// Creates the stack when missing, otherwise selects it.
  static Future<Stack> createOrSelect(
    String stackName,
    LocalWorkspace workspace,
  ) async {
    return workspace.createOrSelectStackInWorkspace(stackName);
  }

  /// Stack name.
  String name;

  /// Parent workspace used to execute commands.
  final LocalWorkspace workspace;

  /// Sets a stack configuration value.
  Future<PulumiCommandResult> setConfig(
    String key,
    String value, {
    bool path = false,
    bool secret = false,
  }) {
    return workspace.setConfig(name, key, value, path: path, secret: secret);
  }

  /// Sets multiple config values on this stack in one command.
  Future<PulumiCommandResult> setAllConfig(
    Map<String, AutomationConfigValue> config, {
    bool path = false,
  }) {
    return workspace.setAllConfig(name, config, path: path);
  }

  /// Sets all config values from a JSON string for this stack.
  Future<PulumiCommandResult> setAllConfigJson(String configJson) {
    return workspace.setAllConfigJson(name, configJson);
  }

  /// Removes a config value from this stack.
  Future<PulumiCommandResult> removeConfig(String key, {bool path = false}) {
    return workspace.removeConfig(name, key, path: path);
  }

  /// Refreshes stack config from backend and returns the resulting config map.
  Future<Map<String, AutomationConfigValue>> refreshConfig() {
    return workspace.refreshConfig(name);
  }

  /// Returns a stack tag value by key.
  Future<String> getTag(String key) {
    return workspace.getTag(name, key);
  }

  /// Sets a stack tag key-value pair.
  Future<PulumiCommandResult> setTag(String key, String value) {
    return workspace.setTag(name, key, value);
  }

  /// Removes a stack tag by key.
  Future<PulumiCommandResult> removeTag(String key) {
    return workspace.removeTag(name, key);
  }

  /// Lists all tags for this stack.
  Future<Map<String, String>> listTags() {
    return workspace.listTags(name);
  }

  /// Removes multiple config values from this stack.
  Future<PulumiCommandResult> removeAllConfig(
    Iterable<String> keys, {
    bool path = false,
  }) {
    return workspace.removeAllConfig(name, keys, path: path);
  }

  /// Adds one or more ESC environments to this stack.
  Future<PulumiCommandResult> addEnvironments(
    Iterable<String> environments, {
    bool yes = true,
  }) {
    return workspace.addEnvironments(name, environments, yes: yes);
  }

  /// Lists ESC environments imported by this stack.
  Future<List<String>> listEnvironments() {
    return workspace.listEnvironments(name);
  }

  /// Removes an ESC environment from this stack.
  Future<PulumiCommandResult> removeEnvironment(
    String environment, {
    bool yes = true,
  }) {
    return workspace.removeEnvironment(name, environment, yes: yes);
  }

  /// Reads a single config value from this stack.
  Future<AutomationConfigValue> getConfig(String key, {bool path = false}) {
    return workspace.getConfig(name, key, path: path);
  }

  /// Reads all config values for this stack.
  Future<Map<String, AutomationConfigValue>> getAllConfig() {
    return workspace.getAllConfig(name);
  }

  /// Runs `pulumi preview` for this stack.
  Future<PulumiCommandResult> preview({
    bool nonInteractive = true,
    bool check = true,
    List<String> extraArgs = const <String>[],
  }) async {
    final args = <String>['preview', '--stack', name];
    if (nonInteractive) {
      args.add('--non-interactive');
    }
    args.addAll(extraArgs);
    final (result, _) = await _runStackCommand(
      args,
      check: check,
      captureEvents: false,
    );
    return result;
  }

  /// Runs `pulumi up` for this stack.
  Future<PulumiCommandResult> up({
    bool yes = true,
    bool skipPreview = true,
    bool nonInteractive = true,
    bool check = true,
    List<String> extraArgs = const <String>[],
  }) async {
    final args = <String>['up', '--stack', name];
    if (yes) {
      args.add('--yes');
    }
    if (skipPreview) {
      args.add('--skip-preview');
    }
    if (nonInteractive) {
      args.add('--non-interactive');
    }
    args.addAll(extraArgs);
    final (result, _) = await _runStackCommand(
      args,
      check: check,
      captureEvents: false,
    );
    return result;
  }

  /// Runs `pulumi refresh` for this stack.
  Future<PulumiCommandResult> refresh({
    bool yes = true,
    bool nonInteractive = true,
    bool check = true,
    List<String> extraArgs = const <String>[],
  }) async {
    final args = <String>['refresh', '--stack', name];
    if (yes) {
      args.add('--yes');
    }
    if (nonInteractive) {
      args.add('--non-interactive');
    }
    args.addAll(extraArgs);
    final (result, _) = await _runStackCommand(
      args,
      check: check,
      captureEvents: false,
    );
    return result;
  }

  /// Runs `pulumi destroy` for this stack.
  Future<PulumiCommandResult> destroy({
    bool yes = true,
    bool skipPreview = true,
    bool nonInteractive = true,
    bool check = true,
    List<String> extraArgs = const <String>[],
  }) async {
    final args = <String>['destroy', '--stack', name];
    if (yes) {
      args.add('--yes');
    }
    if (skipPreview) {
      args.add('--skip-preview');
    }
    if (nonInteractive) {
      args.add('--non-interactive');
    }
    args.addAll(extraArgs);
    final (result, _) = await _runStackCommand(
      args,
      check: check,
      captureEvents: false,
    );
    return result;
  }

  /// Renames this stack.
  Future<PulumiCommandResult> rename(
    String stackName, {
    bool check = true,
    List<String> extraArgs = const <String>[],
  }) async {
    final args = <String>['stack', 'rename', stackName];
    args.addAll(extraArgs);
    final (result, _) = await _runStackCommand(
      args,
      check: check,
      captureEvents: false,
    );
    if (result.succeeded) {
      name = stackName;
    }
    return result;
  }

  /// Runs `pulumi preview` and returns a typed operation result.
  Future<AutomationPreviewResult> previewResult({
    bool nonInteractive = true,
    bool check = true,
    bool captureEvents = true,
    AutomationEngineEventHandler? onEvent,
    List<String> extraArgs = const <String>[],
  }) async {
    final args = <String>['preview', '--stack', name];
    if (nonInteractive) {
      args.add('--non-interactive');
    }
    args.addAll(extraArgs);

    final (result, events) = await _runStackCommand(
      args,
      check: check,
      captureEvents: captureEvents,
      onEvent: onEvent,
    );
    final summaryEvent = _extractLatestSummaryEvent(events);
    final changeSummary = _extractChangeSummary(events);
    return AutomationPreviewResult(
      commandResult: result,
      events: events,
      summaryEvent: summaryEvent,
      changeSummary: changeSummary,
    );
  }

  /// Runs `pulumi refresh --preview-only` and returns a typed preview result.
  Future<AutomationPreviewResult> previewRefreshResult({
    bool nonInteractive = true,
    bool check = true,
    bool captureEvents = true,
    AutomationEngineEventHandler? onEvent,
    List<String> extraArgs = const <String>[],
  }) async {
    final args = <String>['refresh', '--stack', name, '--preview-only'];
    if (nonInteractive) {
      args.add('--non-interactive');
    }
    args.addAll(extraArgs);

    final (result, events) = await _runStackCommand(
      args,
      check: check,
      captureEvents: captureEvents,
      onEvent: onEvent,
    );
    final summaryEvent = _extractLatestSummaryEvent(events);
    final changeSummary = _extractChangeSummary(events);
    return AutomationPreviewResult(
      commandResult: result,
      events: events,
      summaryEvent: summaryEvent,
      changeSummary: changeSummary,
    );
  }

  /// Runs `pulumi destroy --preview-only` and returns a typed preview result.
  Future<AutomationPreviewResult> previewDestroyResult({
    bool nonInteractive = true,
    bool check = true,
    bool captureEvents = true,
    AutomationEngineEventHandler? onEvent,
    List<String> extraArgs = const <String>[],
  }) async {
    final args = <String>['destroy', '--stack', name, '--preview-only'];
    if (nonInteractive) {
      args.add('--non-interactive');
    }
    args.addAll(extraArgs);

    final (result, events) = await _runStackCommand(
      args,
      check: check,
      captureEvents: captureEvents,
      onEvent: onEvent,
    );
    final summaryEvent = _extractLatestSummaryEvent(events);
    final changeSummary = _extractChangeSummary(events);
    return AutomationPreviewResult(
      commandResult: result,
      events: events,
      summaryEvent: summaryEvent,
      changeSummary: changeSummary,
    );
  }

  /// Runs `pulumi up` and returns a typed operation result.
  Future<AutomationUpResult> upResult({
    bool yes = true,
    bool skipPreview = true,
    bool nonInteractive = true,
    bool check = true,
    bool captureEvents = true,
    bool includeOutputs = true,
    bool includeSummary = true,
    bool showSummarySecrets = false,
    AutomationEngineEventHandler? onEvent,
    List<String> extraArgs = const <String>[],
  }) async {
    final args = <String>['up', '--stack', name];
    if (yes) {
      args.add('--yes');
    }
    if (skipPreview) {
      args.add('--skip-preview');
    }
    if (nonInteractive) {
      args.add('--non-interactive');
    }
    args.addAll(extraArgs);

    final (result, events) = await _runStackCommand(
      args,
      check: check,
      captureEvents: captureEvents,
      onEvent: onEvent,
    );
    Map<String, AutomationOutputValue>? typedOutputs;
    AutomationUpdateSummary? summary;
    final effectiveShowSummarySecrets = workspace.remote
        ? false
        : showSummarySecrets;
    AutomationUpdateSummary? remoteSummary;
    if (workspace.remote &&
        result.succeeded &&
        (includeOutputs || includeSummary)) {
      remoteSummary = await _awaitTerminalRemoteSummary(
        showSecrets: effectiveShowSummarySecrets,
      );
    }
    if (includeOutputs && result.succeeded) {
      typedOutputs = await outputsWithMetadata();
    }
    if (includeSummary && result.succeeded) {
      summary =
          remoteSummary ??
          await infoSummary(showSecrets: effectiveShowSummarySecrets);
    }
    return AutomationUpResult(
      commandResult: result,
      events: events,
      outputs: typedOutputs,
      summary: summary,
    );
  }

  /// Runs `pulumi refresh` and returns a typed operation result.
  Future<AutomationRefreshResult> refreshResult({
    bool yes = true,
    bool nonInteractive = true,
    bool check = true,
    bool captureEvents = true,
    bool includeSummary = true,
    bool showSummarySecrets = false,
    AutomationEngineEventHandler? onEvent,
    List<String> extraArgs = const <String>[],
  }) async {
    final args = <String>['refresh', '--stack', name];
    if (yes) {
      args.add('--yes');
    }
    if (nonInteractive) {
      args.add('--non-interactive');
    }
    args.addAll(extraArgs);

    final (result, events) = await _runStackCommand(
      args,
      check: check,
      captureEvents: captureEvents,
      onEvent: onEvent,
    );
    AutomationUpdateSummary? summary;
    final effectiveShowSummarySecrets = workspace.remote
        ? false
        : showSummarySecrets;
    if (includeSummary && result.succeeded) {
      summary = workspace.remote
          ? await _awaitTerminalRemoteSummary(
              showSecrets: effectiveShowSummarySecrets,
            )
          : await infoSummary(showSecrets: effectiveShowSummarySecrets);
    }
    return AutomationRefreshResult(
      commandResult: result,
      events: events,
      summary: summary,
    );
  }

  /// Runs `pulumi destroy` and returns a typed operation result.
  Future<AutomationDestroyResult> destroyResult({
    bool yes = true,
    bool skipPreview = true,
    bool nonInteractive = true,
    bool check = true,
    bool captureEvents = true,
    bool includeSummary = true,
    bool showSummarySecrets = false,
    AutomationEngineEventHandler? onEvent,
    List<String> extraArgs = const <String>[],
  }) async {
    final args = <String>['destroy', '--stack', name];
    if (yes) {
      args.add('--yes');
    }
    if (skipPreview) {
      args.add('--skip-preview');
    }
    if (nonInteractive) {
      args.add('--non-interactive');
    }
    args.addAll(extraArgs);

    final (result, events) = await _runStackCommand(
      args,
      check: check,
      captureEvents: captureEvents,
      onEvent: onEvent,
    );
    AutomationUpdateSummary? summary;
    final effectiveShowSummarySecrets = workspace.remote
        ? false
        : showSummarySecrets;
    if (includeSummary && result.succeeded) {
      summary = workspace.remote
          ? await _awaitTerminalRemoteSummary(
              showSecrets: effectiveShowSummarySecrets,
            )
          : await infoSummary(showSecrets: effectiveShowSummarySecrets);
    }
    return AutomationDestroyResult(
      commandResult: result,
      events: events,
      summary: summary,
    );
  }

  /// Renames this stack and returns a typed operation result.
  Future<AutomationRenameResult> renameResult(
    String stackName, {
    bool check = true,
    bool includeSummary = true,
    bool showSummarySecrets = false,
    bool captureEvents = false,
    AutomationEngineEventHandler? onEvent,
    List<String> extraArgs = const <String>[],
  }) async {
    if (workspace.remote && showSummarySecrets) {
      throw ArgumentError(
        "can't enable `showSummarySecrets` for remote workspaces",
      );
    }

    final args = <String>['stack', 'rename', stackName];
    args.addAll(extraArgs);

    final (result, events) = await _runStackCommand(
      args,
      check: check,
      captureEvents: captureEvents,
      onEvent: onEvent,
    );

    AutomationUpdateSummary? summary;
    if (result.succeeded) {
      name = stackName;
      if (includeSummary) {
        final effectiveShowSummarySecrets = workspace.remote
            ? false
            : showSummarySecrets;
        summary = workspace.remote
            ? await _awaitTerminalRemoteSummary(
                showSecrets: effectiveShowSummarySecrets,
              )
            : await infoSummary(showSecrets: effectiveShowSummarySecrets);
      }
    }

    return AutomationRenameResult(
      commandResult: result,
      events: events,
      summary: summary,
    );
  }

  /// Imports resources into this stack and returns a typed operation result.
  Future<AutomationImportResult> importResources({
    String? message,
    List<AutomationImportResource>? resources,
    Map<String, String>? nameTable,
    bool? protect,
    bool generateCode = true,
    String? converter,
    List<String>? converterArgs,
    bool check = true,
    bool includeSummary = true,
    bool showSummarySecrets = false,
    bool captureEvents = false,
    AutomationEngineEventHandler? onEvent,
    List<String> extraArgs = const <String>[],
  }) async {
    final args = <String>['import', '--stack', name, '--yes', '--skip-preview'];
    if (message != null && message.trim().isNotEmpty) {
      args.addAll(<String>['--message', message]);
    }
    args.addAll(extraArgs);

    Directory? tempDir;
    String generatedCode = '';

    try {
      tempDir = await Directory.systemTemp.createTemp('pulumi-import-');
      final generatedCodePath = p.join(tempDir.path, 'generated_code.txt');

      if (resources != null) {
        final importFilePath = p.join(tempDir.path, 'import.json');
        final payload = <String, dynamic>{
          'resources': resources
              .map((resource) => resource.toJson())
              .toList(growable: false),
        };
        if (nameTable != null) {
          payload['nameTable'] = nameTable;
        }
        await File(importFilePath).writeAsString(jsonEncode(payload));
        args.addAll(<String>['--file', importFilePath]);
      }

      if (protect != null) {
        args.add('--protect=${protect ? 'true' : 'false'}');
      }

      if (generateCode) {
        args.add('--out=$generatedCodePath');
      } else {
        args.add('--generate-code=false');
      }

      if (converter != null && converter.trim().isNotEmpty) {
        args.addAll(<String>['--from', converter]);
        if (converterArgs != null && converterArgs.isNotEmpty) {
          args.add('--');
          args.addAll(converterArgs);
        }
      }

      final (result, events) = await _runStackCommand(
        args,
        check: check,
        captureEvents: captureEvents,
        onEvent: onEvent,
      );

      if (generateCode && result.succeeded) {
        final generatedCodeFile = File(generatedCodePath);
        if (await generatedCodeFile.exists()) {
          generatedCode = await generatedCodeFile.readAsString();
        }
      }

      AutomationUpdateSummary? summary;
      if (includeSummary && result.succeeded) {
        final effectiveShowSummarySecrets = workspace.remote
            ? false
            : showSummarySecrets;
        summary = workspace.remote
            ? await _awaitTerminalRemoteSummary(
                showSecrets: effectiveShowSummarySecrets,
              )
            : await infoSummary(showSecrets: effectiveShowSummarySecrets);
      }

      return AutomationImportResult(
        commandResult: result,
        events: events,
        generatedCode: generatedCode,
        summary: summary,
      );
    } finally {
      if (tempDir != null && await tempDir.exists()) {
        await tempDir.delete(recursive: true);
      }
    }
  }

  /// Returns stack outputs from the last successful update.
  Future<Map<String, dynamic>> outputs({bool showSecrets = false}) {
    return workspace.stackOutputs(name, showSecrets: showSecrets);
  }

  /// Returns stack outputs with secret metadata.
  Future<Map<String, AutomationOutputValue>> outputsWithMetadata() {
    return workspace.stackOutputsWithMetadata(name);
  }

  /// Exports deployment state for this stack.
  Future<Map<String, dynamic>> exportStack({bool showSecrets = true}) {
    return workspace.exportStack(name, showSecrets: showSecrets);
  }

  /// Imports deployment state into this stack.
  Future<void> importStack(Map<String, dynamic> state) {
    return workspace.importStack(name, state);
  }

  /// Returns stack update history.
  Future<List<Map<String, dynamic>>> history({
    int? pageSize,
    int? page,
    bool showSecrets = false,
  }) async {
    final args = <String>['stack', 'history', '--json', '--stack', name];
    if (pageSize != null) {
      args.addAll(<String>['--page-size', '$pageSize']);
    }
    if (page != null) {
      args.addAll(<String>['--page', '$page']);
    }
    if (showSecrets) {
      args.add('--show-secrets');
    }

    final result = await workspace.runPulumiCommand(args);
    final decoded = jsonDecode(result.stdout);
    if (decoded is! List) {
      throw FormatException(
        'Expected array JSON from `pulumi stack history --json`',
      );
    }

    return decoded
        .whereType<Map>()
        .map((entry) => entry.map((key, value) => MapEntry('$key', value)))
        .toList(growable: false);
  }

  /// Returns the most recent stack update summary if one exists.
  Future<Map<String, dynamic>?> info({bool showSecrets = false}) async {
    final entries = await history(pageSize: 1, showSecrets: showSecrets);
    return entries.isEmpty ? null : entries.first;
  }

  /// Returns the most recent stack update summary as a typed model.
  Future<AutomationUpdateSummary?> infoSummary({
    bool showSecrets = false,
  }) async {
    final latest = await info(showSecrets: showSecrets);
    if (latest == null) {
      return null;
    }
    return AutomationUpdateSummary.fromJson(latest);
  }

  /// Cancels the currently running update for this stack.
  Future<PulumiCommandResult> cancel({bool yes = true}) {
    final args = <String>['cancel', '--stack', name];
    if (yes) {
      args.add('--yes');
    }
    return workspace.runPulumiCommand(args);
  }

  Future<AutomationUpdateSummary?> _awaitTerminalRemoteSummary({
    required bool showSecrets,
    Duration pollInterval = const Duration(seconds: 5),
    int maxAttempts = 24,
  }) async {
    AutomationUpdateSummary? latest;
    for (var attempt = 0; attempt < maxAttempts; attempt++) {
      latest = await infoSummary(showSecrets: showSecrets);
      final state = latest?.parsedResult;
      if (state != AutomationUpdateResult.inProgress &&
          state != AutomationUpdateResult.notStarted) {
        return latest;
      }
      await Future<void>.delayed(pollInterval);
    }
    return latest;
  }

  Future<(PulumiCommandResult, List<AutomationEngineEvent>)> _runStackCommand(
    List<String> baseArgs, {
    required bool check,
    required bool captureEvents,
    AutomationEngineEventHandler? onEvent,
  }) async {
    final operationArgs = <String>[...baseArgs];
    final additionalArgs = await workspace.serializeArgsForOperation(name);
    if (additionalArgs.isNotEmpty) {
      operationArgs.addAll(additionalArgs);
    }

    Directory? tempDir;
    String? eventLogPath;
    if (captureEvents || onEvent != null) {
      tempDir = await Directory.systemTemp.createTemp('pulumi-events-');
      eventLogPath = p.join(tempDir.path, 'events.json');
      operationArgs.addAll(<String>['--event-log', eventLogPath]);
    }

    PulumiCommandResult? result;
    Object? error;
    StackTrace? stackTrace;
    List<AutomationEngineEvent> events = const <AutomationEngineEvent>[];
    try {
      result = await workspace.runPulumiCommand(operationArgs, check: check);
    } catch (err, st) {
      error = err;
      stackTrace = st;
    } finally {
      if (eventLogPath != null) {
        events = await _readEventLogFile(eventLogPath);
        if (onEvent != null) {
          for (final event in events) {
            onEvent(event);
          }
        }
      }
      await workspace.runPostCommandCallback(name);
      if (tempDir != null && await tempDir.exists()) {
        await tempDir.delete(recursive: true);
      }
    }

    if (error != null) {
      Error.throwWithStackTrace(error, stackTrace!);
    }
    return (result!, events);
  }

  Future<List<AutomationEngineEvent>> _readEventLogFile(String path) async {
    final file = File(path);
    if (!await file.exists()) {
      return const <AutomationEngineEvent>[];
    }

    final lines = await file.readAsLines();
    final events = <AutomationEngineEvent>[];
    for (final line in lines) {
      final trimmed = line.trim();
      if (trimmed.isEmpty) {
        continue;
      }
      try {
        final decoded = jsonDecode(trimmed);
        if (decoded is Map) {
          events.add(
            AutomationEngineEvent.fromJson(
              decoded.map((key, value) => MapEntry('$key', value)),
            ),
          );
        }
      } catch (_) {
        // Ignore malformed lines from partially written logs.
      }
    }
    return events;
  }

  AutomationOpMap _extractChangeSummary(List<AutomationEngineEvent> events) {
    for (final event in events.reversed) {
      final summaryEvent = event.summaryEvent;
      if (summaryEvent == null) {
        continue;
      }
      return summaryEvent.resourceChanges;
    }
    return const <String, int>{};
  }

  AutomationSummaryEvent? _extractLatestSummaryEvent(
    List<AutomationEngineEvent> events,
  ) {
    for (final event in events.reversed) {
      final summaryEvent = event.summaryEvent;
      if (summaryEvent != null) {
        return summaryEvent;
      }
    }
    return null;
  }
}
