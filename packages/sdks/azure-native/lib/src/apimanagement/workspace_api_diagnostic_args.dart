// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'llmdiagnostic_settings.dart';
import 'pipeline_diagnostic_settings.dart';
import 'sampling_settings.dart';

/// {@template pulumi_apimanagement_workspace_api_diagnostic_args_doc}
/// The set of arguments for WorkspaceApiDiagnostic.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_api_diagnostic_args_doc}
class WorkspaceApiDiagnosticArgs {
  /// Specifies for what type of messages sampling settings should not apply.
  final pulumi.Input<String>? alwaysLog;

  /// API identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> apiId;

  /// Diagnostic settings for incoming/outgoing HTTP messages to the Backend
  final pulumi.Input<PipelineDiagnosticSettings>? backend;

  /// Diagnostic identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? diagnosticId;

  /// Diagnostic settings for incoming/outgoing HTTP messages to the Gateway.
  final pulumi.Input<PipelineDiagnosticSettings>? frontend;

  /// Sets correlation protocol to use for Application Insights diagnostics.
  final pulumi.Input<String>? httpCorrelationProtocol;

  /// Large Language Models diagnostic settings
  final pulumi.Input<LLMDiagnosticSettings>? largeLanguageModel;

  /// Log the ClientIP. Default is false.
  final pulumi.Input<bool>? logClientIp;

  /// Resource Id of a target logger.
  final pulumi.Input<String> loggerId;

  /// Emit custom metrics via emit-metric policy. Applicable only to Application Insights diagnostic settings.
  final pulumi.Input<bool>? metrics;

  /// The format of the Operation Name for Application Insights telemetries. Default is Name.
  final pulumi.Input<String>? operationNameFormat;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Sampling settings for Diagnostic.
  final pulumi.Input<SamplingSettings>? sampling;

  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// The verbosity level applied to traces emitted by trace policies.
  final pulumi.Input<String>? verbosity;

  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceApiDiagnosticArgs].
  /// [alwaysLog] Specifies for what type of messages sampling settings should not apply.
  /// [apiId] API identifier. Must be unique in the current API Management service instance.
  /// [backend] Diagnostic settings for incoming/outgoing HTTP messages to the Backend
  /// [diagnosticId] Diagnostic identifier. Must be unique in the current API Management service instance.
  /// [frontend] Diagnostic settings for incoming/outgoing HTTP messages to the Gateway.
  /// [httpCorrelationProtocol] Sets correlation protocol to use for Application Insights diagnostics.
  /// [largeLanguageModel] Large Language Models diagnostic settings
  /// [logClientIp] Log the ClientIP. Default is false.
  /// [loggerId] Resource Id of a target logger.
  /// [metrics] Emit custom metrics via emit-metric policy. Applicable only to Application Insights diagnostic settings.
  /// [operationNameFormat] The format of the Operation Name for Application Insights telemetries. Default is Name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sampling] Sampling settings for Diagnostic.
  /// [serviceName] The name of the API Management service.
  /// [verbosity] The verbosity level applied to traces emitted by trace policies.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  WorkspaceApiDiagnosticArgs({
    this.alwaysLog,
    required this.apiId,
    this.backend,
    this.diagnosticId,
    this.frontend,
    this.httpCorrelationProtocol,
    this.largeLanguageModel,
    this.logClientIp,
    required this.loggerId,
    this.metrics,
    this.operationNameFormat,
    required this.resourceGroupName,
    this.sampling,
    required this.serviceName,
    this.verbosity,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysLog': ?alwaysLog,
      'apiId': apiId,
      'backend':
          ?pulumi.Input.mapOptionalInputValue<
            PipelineDiagnosticSettings,
            Map<String, dynamic>
          >(backend, (value) => value.toMap()),
      'diagnosticId': ?diagnosticId,
      'frontend':
          ?pulumi.Input.mapOptionalInputValue<
            PipelineDiagnosticSettings,
            Map<String, dynamic>
          >(frontend, (value) => value.toMap()),
      'httpCorrelationProtocol': ?httpCorrelationProtocol,
      'largeLanguageModel':
          ?pulumi.Input.mapOptionalInputValue<
            LLMDiagnosticSettings,
            Map<String, dynamic>
          >(largeLanguageModel, (value) => value.toMap()),
      'logClientIp': ?logClientIp,
      'loggerId': loggerId,
      'metrics': ?metrics,
      'operationNameFormat': ?operationNameFormat,
      'resourceGroupName': resourceGroupName,
      'sampling':
          ?pulumi.Input.mapOptionalInputValue<
            SamplingSettings,
            Map<String, dynamic>
          >(sampling, (value) => value.toMap()),
      'serviceName': serviceName,
      'verbosity': ?verbosity,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceApiDiagnosticArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceApiDiagnosticArgs(
      alwaysLog: (() {
        final guardedValue = map['alwaysLog'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      backend: (() {
        final guardedValue = map['backend'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PipelineDiagnosticSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      diagnosticId: (() {
        final guardedValue = map['diagnosticId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      frontend: (() {
        final guardedValue = map['frontend'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PipelineDiagnosticSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      httpCorrelationProtocol: (() {
        final guardedValue = map['httpCorrelationProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      largeLanguageModel: (() {
        final guardedValue = map['largeLanguageModel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LLMDiagnosticSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      logClientIp: (() {
        final guardedValue = map['logClientIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      loggerId: pulumi.Input.fromValue(map['loggerId'] as String),
      metrics: (() {
        final guardedValue = map['metrics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      operationNameFormat: (() {
        final guardedValue = map['operationNameFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sampling: (() {
        final guardedValue = map['sampling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SamplingSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      verbosity: (() {
        final guardedValue = map['verbosity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
