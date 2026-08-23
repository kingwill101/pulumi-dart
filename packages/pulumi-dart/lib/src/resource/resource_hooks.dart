import 'dart:async';
import 'dart:io';

/// {@template pulumi.resource_hook_handler.summary}
/// Callback signature for lifecycle resource hooks.
///
/// Hooks run around provider lifecycle operations and may inspect input/output
/// payloads in [ResourceHookArgs].
/// {@endtemplate}
///
typedef ResourceHookHandler = FutureOr<void> Function(ResourceHookArgs args);

/// {@template pulumi.error_hook_handler.summary}
/// Callback signature for error hooks.
///
/// Return `true` to request retry where supported by the engine/provider.
/// {@endtemplate}
///
typedef ErrorHookHandler = FutureOr<bool> Function(ErrorHookArgs args);

/// {@template pulumi.resource_hook.summary}
/// A named lifecycle hook.
///
/// ## Example
/// ```dart
/// final hook = ResourceHook('audit-create', (args) {
///   // inspect args.newInputs / args.type
/// });
/// ```
/// {@endtemplate}
///
class ResourceHook {
  /// Unique hook name.
  final String name;

  /// Hook callback implementation.
  final ResourceHookHandler handler;

  /// Whether to run during dry-run previews.
  final bool onDryRun;

  /// Whether command failures should be logged instead of failing deployment.
  final bool ignoreErrors;

  const ResourceHook(
    this.name,
    this.handler, {
    this.onDryRun = false,
    this.ignoreErrors = false,
  });
}

/// Runs a resource-hook command and throws when it exits unsuccessfully.
Future<void> runResourceHookCommand(List<String> command) async {
  if (command.isEmpty) return;
  final result = await Process.run(command.first, command.skip(1).toList());
  if (result.exitCode != 0) {
    throw ProcessException(
      command.first,
      command.skip(1).toList(),
      result.stderr.toString(),
      result.exitCode,
    );
  }
}

/// Runs an error-hook command and returns whether the operation should retry.
Future<bool> runErrorHookCommand(List<String> command) async {
  if (command.isEmpty) return false;
  final result = await Process.run(command.first, command.skip(1).toList());
  return result.exitCode == 0;
}

/// Context passed to a lifecycle [ResourceHook].
class ResourceHookArgs {
  /// Resource URN.
  final String urn;

  /// Resource ID (if known).
  final String id;

  /// Logical resource name.
  final String name;

  /// Pulumi type token.
  final String type;

  /// New input properties for create/update operations.
  final Map<String, dynamic>? newInputs;

  /// Old input properties for update/delete operations.
  final Map<String, dynamic>? oldInputs;

  /// New output properties after operation completes.
  final Map<String, dynamic>? newOutputs;

  /// Old output properties before operation runs.
  final Map<String, dynamic>? oldOutputs;

  const ResourceHookArgs({
    required this.urn,
    required this.id,
    required this.name,
    required this.type,
    this.newInputs,
    this.oldInputs,
    this.newOutputs,
    this.oldOutputs,
  });
}

/// Context passed to an [ErrorHook].
class ErrorHookArgs {
  /// Resource URN.
  final String urn;

  /// Resource ID (if known).
  final String id;

  /// Logical resource name.
  final String name;

  /// Pulumi type token.
  final String type;

  /// New input properties for the failed operation.
  final Map<String, dynamic>? newInputs;

  /// Old input properties for the failed operation.
  final Map<String, dynamic>? oldInputs;

  /// Old output properties for the failed operation.
  final Map<String, dynamic>? oldOutputs;

  /// Failed operation name.
  final String failedOperation;

  /// Provider/engine error messages.
  final List<String> errors;

  const ErrorHookArgs({
    required this.urn,
    required this.id,
    required this.name,
    required this.type,
    this.newInputs,
    this.oldInputs,
    this.oldOutputs,
    this.failedOperation = '',
    this.errors = const [],
  });
}

/// A named error hook.
class ErrorHook {
  /// Unique hook name.
  final String name;

  /// Error hook callback implementation.
  final ErrorHookHandler handler;

  const ErrorHook(this.name, this.handler);
}

/// Collection of resource lifecycle hooks grouped by operation phase.
class ResourceHookBinding {
  /// Hooks run before create.
  final List<ResourceHook> beforeCreate;

  /// Hooks run after create.
  final List<ResourceHook> afterCreate;

  /// Hooks run before update.
  final List<ResourceHook> beforeUpdate;

  /// Hooks run after update.
  final List<ResourceHook> afterUpdate;

  /// Hooks run before delete.
  final List<ResourceHook> beforeDelete;

  /// Hooks run after delete.
  final List<ResourceHook> afterDelete;

  /// Hooks run on provider operation failures.
  final List<ErrorHook> onError;

  const ResourceHookBinding({
    this.beforeCreate = const [],
    this.afterCreate = const [],
    this.beforeUpdate = const [],
    this.afterUpdate = const [],
    this.beforeDelete = const [],
    this.afterDelete = const [],
    this.onError = const [],
  });

  /// Returns `true` when no hooks are configured.
  bool get isEmpty =>
      beforeCreate.isEmpty &&
      afterCreate.isEmpty &&
      beforeUpdate.isEmpty &&
      afterUpdate.isEmpty &&
      beforeDelete.isEmpty &&
      afterDelete.isEmpty &&
      onError.isEmpty;

  /// Creates a copy with selected phases replaced.
  ResourceHookBinding copyWith({
    List<ResourceHook>? beforeCreate,
    List<ResourceHook>? afterCreate,
    List<ResourceHook>? beforeUpdate,
    List<ResourceHook>? afterUpdate,
    List<ResourceHook>? beforeDelete,
    List<ResourceHook>? afterDelete,
    List<ErrorHook>? onError,
  }) {
    return ResourceHookBinding(
      beforeCreate: beforeCreate ?? this.beforeCreate,
      afterCreate: afterCreate ?? this.afterCreate,
      beforeUpdate: beforeUpdate ?? this.beforeUpdate,
      afterUpdate: afterUpdate ?? this.afterUpdate,
      beforeDelete: beforeDelete ?? this.beforeDelete,
      afterDelete: afterDelete ?? this.afterDelete,
      onError: onError ?? this.onError,
    );
  }
}
