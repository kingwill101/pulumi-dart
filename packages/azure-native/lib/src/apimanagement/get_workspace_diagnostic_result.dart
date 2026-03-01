// ignore_for_file: unused_element, unnecessary_cast

import 'llmdiagnostic_settings_response.dart';
import 'pipeline_diagnostic_settings_response.dart';
import 'sampling_settings_response.dart';

/// Result data returned by getWorkspaceDiagnostic.
class GetWorkspaceDiagnosticResult {
  /// Specifies for what type of messages sampling settings should not apply.
  final String? alwaysLog;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Diagnostic settings for incoming/outgoing HTTP messages to the Backend
  final PipelineDiagnosticSettingsResponse? backend;
  /// Diagnostic settings for incoming/outgoing HTTP messages to the Gateway.
  final PipelineDiagnosticSettingsResponse? frontend;
  /// Sets correlation protocol to use for Application Insights diagnostics.
  final String? httpCorrelationProtocol;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Large Language Models diagnostic settings
  final LLMDiagnosticSettingsResponse? largeLanguageModel;
  /// Log the ClientIP. Default is false.
  final bool? logClientIp;
  /// Resource Id of a target logger.
  final String loggerId;
  /// Emit custom metrics via emit-metric policy. Applicable only to Application Insights diagnostic settings.
  final bool? metrics;
  /// The name of the resource
  final String name;
  /// The format of the Operation Name for Application Insights telemetries. Default is Name.
  final String? operationNameFormat;
  /// Sampling settings for Diagnostic.
  final SamplingSettingsResponse? sampling;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The verbosity level applied to traces emitted by trace policies.
  final String? verbosity;

  /// Creates a new [GetWorkspaceDiagnosticResult].
  /// [alwaysLog] Specifies for what type of messages sampling settings should not apply.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backend] Diagnostic settings for incoming/outgoing HTTP messages to the Backend
  /// [frontend] Diagnostic settings for incoming/outgoing HTTP messages to the Gateway.
  /// [httpCorrelationProtocol] Sets correlation protocol to use for Application Insights diagnostics.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [largeLanguageModel] Large Language Models diagnostic settings
  /// [logClientIp] Log the ClientIP. Default is false.
  /// [loggerId] Resource Id of a target logger.
  /// [metrics] Emit custom metrics via emit-metric policy. Applicable only to Application Insights diagnostic settings.
  /// [name] The name of the resource
  /// [operationNameFormat] The format of the Operation Name for Application Insights telemetries. Default is Name.
  /// [sampling] Sampling settings for Diagnostic.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [verbosity] The verbosity level applied to traces emitted by trace policies.
  GetWorkspaceDiagnosticResult({
    this.alwaysLog,
    required this.azureApiVersion,
    this.backend,
    this.frontend,
    this.httpCorrelationProtocol,
    required this.id,
    this.largeLanguageModel,
    this.logClientIp,
    required this.loggerId,
    this.metrics,
    required this.name,
    this.operationNameFormat,
    this.sampling,
    required this.type,
    this.verbosity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysLog': ?alwaysLog,
      'azureApiVersion': azureApiVersion,
      'backend': ?backend == null ? null : backend!.toMap(),
      'frontend': ?frontend == null ? null : frontend!.toMap(),
      'httpCorrelationProtocol': ?httpCorrelationProtocol,
      'id': id,
      'largeLanguageModel': ?largeLanguageModel == null ? null : largeLanguageModel!.toMap(),
      'logClientIp': ?logClientIp,
      'loggerId': loggerId,
      'metrics': ?metrics,
      'name': name,
      'operationNameFormat': ?operationNameFormat,
      'sampling': ?sampling == null ? null : sampling!.toMap(),
      'type': type,
      'verbosity': ?verbosity,
    };
  }

  factory GetWorkspaceDiagnosticResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceDiagnosticResult(
      alwaysLog: map['alwaysLog'] == null ? null : map['alwaysLog'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      backend: map['backend'] == null ? null : PipelineDiagnosticSettingsResponse.fromMap((map['backend'] as Map).cast<String, dynamic>()),
      frontend: map['frontend'] == null ? null : PipelineDiagnosticSettingsResponse.fromMap((map['frontend'] as Map).cast<String, dynamic>()),
      httpCorrelationProtocol: map['httpCorrelationProtocol'] == null ? null : map['httpCorrelationProtocol'] as String,
      id: map['id'] as String,
      largeLanguageModel: map['largeLanguageModel'] == null ? null : LLMDiagnosticSettingsResponse.fromMap((map['largeLanguageModel'] as Map).cast<String, dynamic>()),
      logClientIp: map['logClientIp'] == null ? null : map['logClientIp'] as bool,
      loggerId: map['loggerId'] as String,
      metrics: map['metrics'] == null ? null : map['metrics'] as bool,
      name: map['name'] as String,
      operationNameFormat: map['operationNameFormat'] == null ? null : map['operationNameFormat'] as String,
      sampling: map['sampling'] == null ? null : SamplingSettingsResponse.fromMap((map['sampling'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      verbosity: map['verbosity'] == null ? null : map['verbosity'] as String,
    );
  }
}

