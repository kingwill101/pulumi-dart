// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_diagnostic_settings_response.dart';
import 'sampling_settings_response.dart';

/// Result data returned by getWorkspaceApiDiagnostic.
class GetWorkspaceApiDiagnosticResult {
  /// Specifies for what type of messages sampling settings should not apply.
  final String? alwaysLog;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Diagnostic settings for incoming/outgoing HTTP messages to the Backend
  final PipelineDiagnosticSettingsResponse? backend;
  /// Diagnostic settings for incoming/outgoing HTTP messages to the Gateway.
  final PipelineDiagnosticSettingsResponse? frontend;
  /// Sets correlation protocol to use for Application Insights diagnostics.
  final String? httpCorrelationProtocol;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Log the ClientIP. Default is false.
  final bool? logClientIp;
  /// Resource Id of a target logger.
  final String? loggerId;
  /// Emit custom metrics via emit-metric policy. Applicable only to Application Insights diagnostic settings.
  final bool? metrics;
  /// The name of the resource
  final String? name;
  /// The format of the Operation Name for Application Insights telemetries. Default is Name.
  final String? operationNameFormat;
  /// Sampling settings for Diagnostic.
  final SamplingSettingsResponse? sampling;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The verbosity level applied to traces emitted by trace policies.
  final String? verbosity;

  /// Creates a new [GetWorkspaceApiDiagnosticResult].
  /// [alwaysLog] Specifies for what type of messages sampling settings should not apply.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backend] Diagnostic settings for incoming/outgoing HTTP messages to the Backend
  /// [frontend] Diagnostic settings for incoming/outgoing HTTP messages to the Gateway.
  /// [httpCorrelationProtocol] Sets correlation protocol to use for Application Insights diagnostics.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [logClientIp] Log the ClientIP. Default is false.
  /// [loggerId] Resource Id of a target logger.
  /// [metrics] Emit custom metrics via emit-metric policy. Applicable only to Application Insights diagnostic settings.
  /// [name] The name of the resource
  /// [operationNameFormat] The format of the Operation Name for Application Insights telemetries. Default is Name.
  /// [sampling] Sampling settings for Diagnostic.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [verbosity] The verbosity level applied to traces emitted by trace policies.
  const GetWorkspaceApiDiagnosticResult({
    this.alwaysLog,
    this.azureApiVersion,
    this.backend,
    this.frontend,
    this.httpCorrelationProtocol,
    this.id,
    this.logClientIp,
    this.loggerId,
    this.metrics,
    this.name,
    this.operationNameFormat,
    this.sampling,
    this.type,
    this.verbosity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysLog': ?alwaysLog,
      'azureApiVersion': ?azureApiVersion,
      'backend': ?backend?.toMap(),
      'frontend': ?frontend?.toMap(),
      'httpCorrelationProtocol': ?httpCorrelationProtocol,
      'id': ?id,
      'logClientIp': ?logClientIp,
      'loggerId': ?loggerId,
      'metrics': ?metrics,
      'name': ?name,
      'operationNameFormat': ?operationNameFormat,
      'sampling': ?sampling?.toMap(),
      'type': ?type,
      'verbosity': ?verbosity,
    };
  }

  factory GetWorkspaceApiDiagnosticResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceApiDiagnosticResult(
      alwaysLog: (() { final guardedValue = map['alwaysLog']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backend: (() { final guardedValue = map['backend']; if (guardedValue == null) return null; return PipelineDiagnosticSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      frontend: (() { final guardedValue = map['frontend']; if (guardedValue == null) return null; return PipelineDiagnosticSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      httpCorrelationProtocol: (() { final guardedValue = map['httpCorrelationProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logClientIp: (() { final guardedValue = map['logClientIp']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      loggerId: (() { final guardedValue = map['loggerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      operationNameFormat: (() { final guardedValue = map['operationNameFormat']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sampling: (() { final guardedValue = map['sampling']; if (guardedValue == null) return null; return SamplingSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      verbosity: (() { final guardedValue = map['verbosity']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
