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
    String? alwaysLog,
    required String apiId,
    PipelineDiagnosticSettings? backend,
    String? diagnosticId,
    PipelineDiagnosticSettings? frontend,
    String? httpCorrelationProtocol,
    LLMDiagnosticSettings? largeLanguageModel,
    bool? logClientIp,
    required String loggerId,
    bool? metrics,
    String? operationNameFormat,
    required String resourceGroupName,
    SamplingSettings? sampling,
    required String serviceName,
    String? verbosity,
    required String workspaceId,
  }) :
      alwaysLog = pulumi.Input.asOptionalInput<String>(alwaysLog),
      apiId = pulumi.Input.asInput<String>(apiId),
      backend = pulumi.Input.asOptionalInput<PipelineDiagnosticSettings>(backend),
      diagnosticId = pulumi.Input.asOptionalInput<String>(diagnosticId),
      frontend = pulumi.Input.asOptionalInput<PipelineDiagnosticSettings>(frontend),
      httpCorrelationProtocol = pulumi.Input.asOptionalInput<String>(httpCorrelationProtocol),
      largeLanguageModel = pulumi.Input.asOptionalInput<LLMDiagnosticSettings>(largeLanguageModel),
      logClientIp = pulumi.Input.asOptionalInput<bool>(logClientIp),
      loggerId = pulumi.Input.asInput<String>(loggerId),
      metrics = pulumi.Input.asOptionalInput<bool>(metrics),
      operationNameFormat = pulumi.Input.asOptionalInput<String>(operationNameFormat),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sampling = pulumi.Input.asOptionalInput<SamplingSettings>(sampling),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      verbosity = pulumi.Input.asOptionalInput<String>(verbosity),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysLog': ?alwaysLog,
      'apiId': apiId,
      'backend': ?pulumi.Input.mapOptionalInputValue<PipelineDiagnosticSettings, Map<String, dynamic>>(backend, (value) => value.toMap()),
      'diagnosticId': ?diagnosticId,
      'frontend': ?pulumi.Input.mapOptionalInputValue<PipelineDiagnosticSettings, Map<String, dynamic>>(frontend, (value) => value.toMap()),
      'httpCorrelationProtocol': ?httpCorrelationProtocol,
      'largeLanguageModel': ?pulumi.Input.mapOptionalInputValue<LLMDiagnosticSettings, Map<String, dynamic>>(largeLanguageModel, (value) => value.toMap()),
      'logClientIp': ?logClientIp,
      'loggerId': loggerId,
      'metrics': ?metrics,
      'operationNameFormat': ?operationNameFormat,
      'resourceGroupName': resourceGroupName,
      'sampling': ?pulumi.Input.mapOptionalInputValue<SamplingSettings, Map<String, dynamic>>(sampling, (value) => value.toMap()),
      'serviceName': serviceName,
      'verbosity': ?verbosity,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceApiDiagnosticArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceApiDiagnosticArgs(
      alwaysLog: map['alwaysLog'] == null ? null : map['alwaysLog'] as String,
      apiId: map['apiId'] as String,
      backend: map['backend'] == null ? null : PipelineDiagnosticSettings.fromMap((map['backend'] as Map).cast<String, dynamic>()),
      diagnosticId: map['diagnosticId'] == null ? null : map['diagnosticId'] as String,
      frontend: map['frontend'] == null ? null : PipelineDiagnosticSettings.fromMap((map['frontend'] as Map).cast<String, dynamic>()),
      httpCorrelationProtocol: map['httpCorrelationProtocol'] == null ? null : map['httpCorrelationProtocol'] as String,
      largeLanguageModel: map['largeLanguageModel'] == null ? null : LLMDiagnosticSettings.fromMap((map['largeLanguageModel'] as Map).cast<String, dynamic>()),
      logClientIp: map['logClientIp'] == null ? null : map['logClientIp'] as bool,
      loggerId: map['loggerId'] as String,
      metrics: map['metrics'] == null ? null : map['metrics'] as bool,
      operationNameFormat: map['operationNameFormat'] == null ? null : map['operationNameFormat'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sampling: map['sampling'] == null ? null : SamplingSettings.fromMap((map['sampling'] as Map).cast<String, dynamic>()),
      serviceName: map['serviceName'] as String,
      verbosity: map['verbosity'] == null ? null : map['verbosity'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

