// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_response_app_health.dart';

/// Container App Dapr configuration.
class DaprResponse {
  /// Dapr application health check configuration
  final pulumi.Input<DaprResponseAppHealth>? appHealth;
  /// Dapr application identifier
  final pulumi.Input<String>? appId;
  /// Tells Dapr which port your application is listening on
  final pulumi.Input<int>? appPort;
  /// Tells Dapr which protocol your application is using. Valid options are http and grpc. Default is http
  final pulumi.Input<String>? appProtocol;
  /// Enables API logging for the Dapr sidecar
  final pulumi.Input<bool>? enableApiLogging;
  /// Boolean indicating if the Dapr side car is enabled
  final pulumi.Input<bool>? enabled;
  /// Increasing max size of request body http and grpc servers parameter in MB to handle uploading of big files. Default is 4 MB.
  final pulumi.Input<int>? httpMaxRequestSize;
  /// Dapr max size of http header read buffer in KB to handle when sending multi-KB headers. Default is 65KB.
  final pulumi.Input<int>? httpReadBufferSize;
  /// Sets the log level for the Dapr sidecar. Allowed values are debug, info, warn, error. Default is info.
  final pulumi.Input<String>? logLevel;
  /// Maximum number of concurrent requests, events handled by the Dapr sidecar
  final pulumi.Input<int>? maxConcurrency;

  /// Creates a new [DaprResponse].
  /// [appHealth] Dapr application health check configuration
  /// [appId] Dapr application identifier
  /// [appPort] Tells Dapr which port your application is listening on
  /// [appProtocol] Tells Dapr which protocol your application is using. Valid options are http and grpc. Default is http
  /// [enableApiLogging] Enables API logging for the Dapr sidecar
  /// [enabled] Boolean indicating if the Dapr side car is enabled
  /// [httpMaxRequestSize] Increasing max size of request body http and grpc servers parameter in MB to handle uploading of big files. Default is 4 MB.
  /// [httpReadBufferSize] Dapr max size of http header read buffer in KB to handle when sending multi-KB headers. Default is 65KB.
  /// [logLevel] Sets the log level for the Dapr sidecar. Allowed values are debug, info, warn, error. Default is info.
  /// [maxConcurrency] Maximum number of concurrent requests, events handled by the Dapr sidecar
  const DaprResponse({
    this.appHealth,
    this.appId,
    this.appPort,
    this.appProtocol,
    this.enableApiLogging,
    this.enabled,
    this.httpMaxRequestSize,
    this.httpReadBufferSize,
    this.logLevel,
    this.maxConcurrency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appHealth': ?pulumi.Input.mapOptionalInputValue<DaprResponseAppHealth, Map<String, dynamic>>(appHealth, (value) => value.toMap()),
      'appId': ?appId,
      'appPort': ?appPort,
      'appProtocol': ?appProtocol,
      'enableApiLogging': ?enableApiLogging,
      'enabled': ?enabled,
      'httpMaxRequestSize': ?httpMaxRequestSize,
      'httpReadBufferSize': ?httpReadBufferSize,
      'logLevel': ?logLevel,
      'maxConcurrency': ?maxConcurrency,
    };
  }

  factory DaprResponse.fromMap(Map<String, dynamic> map) {
    return DaprResponse(
      appHealth: (() { final guardedValue = map['appHealth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaprResponseAppHealth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appPort: (() { final guardedValue = map['appPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      appProtocol: (() { final guardedValue = map['appProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableApiLogging: (() { final guardedValue = map['enableApiLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpMaxRequestSize: (() { final guardedValue = map['httpMaxRequestSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      httpReadBufferSize: (() { final guardedValue = map['httpReadBufferSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxConcurrency: (() { final guardedValue = map['maxConcurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
