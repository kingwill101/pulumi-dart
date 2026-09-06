// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_diagnostic_settings.dart';
import 'sampling_settings.dart';

/// {@template pulumi_apimanagement_diagnostic_args_doc}
/// The set of arguments for Diagnostic.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_diagnostic_args_doc}
class DiagnosticArgs {
  /// Specifies for what type of messages sampling settings should not apply.
  final pulumi.Input<dynamic>? alwaysLog;
  /// Diagnostic settings for incoming/outgoing HTTP messages to the Backend
  final pulumi.Input<PipelineDiagnosticSettings?>? backend;
  /// Diagnostic identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String?>? diagnosticId;
  /// Diagnostic settings for incoming/outgoing HTTP messages to the Gateway.
  final pulumi.Input<PipelineDiagnosticSettings?>? frontend;
  /// Sets correlation protocol to use for Application Insights diagnostics.
  final pulumi.Input<dynamic>? httpCorrelationProtocol;
  /// Log the ClientIP. Default is false.
  final pulumi.Input<bool?>? logClientIp;
  /// Resource Id of a target logger.
  final pulumi.Input<String> loggerId;
  /// Emit custom metrics via emit-metric policy. Applicable only to Application Insights diagnostic settings.
  final pulumi.Input<bool?>? metrics;
  /// The format of the Operation Name for Application Insights telemetries. Default is Name.
  final pulumi.Input<dynamic>? operationNameFormat;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Sampling settings for Diagnostic.
  final pulumi.Input<SamplingSettings?>? sampling;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// The verbosity level applied to traces emitted by trace policies.
  final pulumi.Input<dynamic>? verbosity;

  /// Creates a new [DiagnosticArgs].
  /// [alwaysLog] Specifies for what type of messages sampling settings should not apply.
  /// [backend] Diagnostic settings for incoming/outgoing HTTP messages to the Backend
  /// [diagnosticId] Diagnostic identifier. Must be unique in the current API Management service instance.
  /// [frontend] Diagnostic settings for incoming/outgoing HTTP messages to the Gateway.
  /// [httpCorrelationProtocol] Sets correlation protocol to use for Application Insights diagnostics.
  /// [logClientIp] Log the ClientIP. Default is false.
  /// [loggerId] Resource Id of a target logger.
  /// [metrics] Emit custom metrics via emit-metric policy. Applicable only to Application Insights diagnostic settings.
  /// [operationNameFormat] The format of the Operation Name for Application Insights telemetries. Default is Name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sampling] Sampling settings for Diagnostic.
  /// [serviceName] The name of the API Management service.
  /// [verbosity] The verbosity level applied to traces emitted by trace policies.
  const DiagnosticArgs({
    this.alwaysLog,
    this.backend,
    this.diagnosticId,
    this.frontend,
    this.httpCorrelationProtocol,
    this.logClientIp,
    required this.loggerId,
    this.metrics,
    this.operationNameFormat,
    required this.resourceGroupName,
    this.sampling,
    required this.serviceName,
    this.verbosity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysLog': ?alwaysLog,
      'backend': ?pulumi.Input.mapOptionalInputValue<PipelineDiagnosticSettings, Map<String, dynamic>>(backend, (value) => value.toMap()),
      'diagnosticId': ?diagnosticId,
      'frontend': ?pulumi.Input.mapOptionalInputValue<PipelineDiagnosticSettings, Map<String, dynamic>>(frontend, (value) => value.toMap()),
      'httpCorrelationProtocol': ?httpCorrelationProtocol,
      'logClientIp': ?logClientIp,
      'loggerId': loggerId,
      'metrics': ?metrics,
      'operationNameFormat': ?operationNameFormat,
      'resourceGroupName': resourceGroupName,
      'sampling': ?pulumi.Input.mapOptionalInputValue<SamplingSettings, Map<String, dynamic>>(sampling, (value) => value.toMap()),
      'serviceName': serviceName,
      'verbosity': ?verbosity,
    };
  }

  factory DiagnosticArgs.fromMap(Map<String, dynamic> map) {
    return DiagnosticArgs(
      alwaysLog: (() { final guardedValue = map['alwaysLog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      backend: (() { final guardedValue = map['backend']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineDiagnosticSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diagnosticId: (() { final guardedValue = map['diagnosticId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frontend: (() { final guardedValue = map['frontend']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineDiagnosticSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpCorrelationProtocol: (() { final guardedValue = map['httpCorrelationProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      logClientIp: (() { final guardedValue = map['logClientIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      loggerId: pulumi.Input.fromValue(map['loggerId'] as String),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operationNameFormat: (() { final guardedValue = map['operationNameFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sampling: (() { final guardedValue = map['sampling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SamplingSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      verbosity: (() { final guardedValue = map['verbosity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
