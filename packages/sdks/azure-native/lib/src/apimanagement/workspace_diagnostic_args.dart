// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'llmdiagnostic_settings.dart';
import 'pipeline_diagnostic_settings.dart';
import 'sampling_settings.dart';

/// {@template pulumi_apimanagement_workspace_diagnostic_args_doc}
/// The set of arguments for WorkspaceDiagnostic.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_diagnostic_args_doc}
class WorkspaceDiagnosticArgs {
  /// Specifies for what type of messages sampling settings should not apply.
  final pulumi.Input<String>? alwaysLog;
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

  /// Creates a new [WorkspaceDiagnosticArgs].
  /// [alwaysLog] Specifies for what type of messages sampling settings should not apply.
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
  WorkspaceDiagnosticArgs({
    pulumi.Output<String>? alwaysLog,
    pulumi.Output<PipelineDiagnosticSettings>? backend,
    pulumi.Output<String>? diagnosticId,
    pulumi.Output<PipelineDiagnosticSettings>? frontend,
    pulumi.Output<String>? httpCorrelationProtocol,
    pulumi.Output<LLMDiagnosticSettings>? largeLanguageModel,
    pulumi.Output<bool>? logClientIp,
    required pulumi.Output<String> loggerId,
    pulumi.Output<bool>? metrics,
    pulumi.Output<String>? operationNameFormat,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<SamplingSettings>? sampling,
    required pulumi.Output<String> serviceName,
    pulumi.Output<String>? verbosity,
    required pulumi.Output<String> workspaceId,
  }) :
      alwaysLog = pulumi.Input.asOptionalInput<String>(alwaysLog),
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

  factory WorkspaceDiagnosticArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceDiagnosticArgs(
      alwaysLog: map['alwaysLog'] == null ? null : pulumi.Output.create<String>(map['alwaysLog'] as String),
      backend: map['backend'] == null ? null : pulumi.Output.create<PipelineDiagnosticSettings>(PipelineDiagnosticSettings.fromMap((map['backend'] as Map).cast<String, dynamic>())),
      diagnosticId: map['diagnosticId'] == null ? null : pulumi.Output.create<String>(map['diagnosticId'] as String),
      frontend: map['frontend'] == null ? null : pulumi.Output.create<PipelineDiagnosticSettings>(PipelineDiagnosticSettings.fromMap((map['frontend'] as Map).cast<String, dynamic>())),
      httpCorrelationProtocol: map['httpCorrelationProtocol'] == null ? null : pulumi.Output.create<String>(map['httpCorrelationProtocol'] as String),
      largeLanguageModel: map['largeLanguageModel'] == null ? null : pulumi.Output.create<LLMDiagnosticSettings>(LLMDiagnosticSettings.fromMap((map['largeLanguageModel'] as Map).cast<String, dynamic>())),
      logClientIp: map['logClientIp'] == null ? null : pulumi.Output.create<bool>(map['logClientIp'] as bool),
      loggerId: pulumi.Output.create<String>(map['loggerId'] as String),
      metrics: map['metrics'] == null ? null : pulumi.Output.create<bool>(map['metrics'] as bool),
      operationNameFormat: map['operationNameFormat'] == null ? null : pulumi.Output.create<String>(map['operationNameFormat'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sampling: map['sampling'] == null ? null : pulumi.Output.create<SamplingSettings>(SamplingSettings.fromMap((map['sampling'] as Map).cast<String, dynamic>())),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      verbosity: map['verbosity'] == null ? null : pulumi.Output.create<String>(map['verbosity'] as String),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

