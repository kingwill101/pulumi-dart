// ignore_for_file: unused_element, unnecessary_cast

import 'dapr_app_health.dart';

/// Container App Dapr configuration.
class Dapr {
  /// Dapr application health check configuration
  final DaprAppHealth? appHealth;
  /// Dapr application identifier
  final String? appId;
  /// Tells Dapr which port your application is listening on
  final int? appPort;
  /// Tells Dapr which protocol your application is using. Valid options are http and grpc. Default is http
  final String? appProtocol;
  /// Enables API logging for the Dapr sidecar
  final bool? enableApiLogging;
  /// Boolean indicating if the Dapr side car is enabled
  final bool? enabled;
  /// Increasing max size of request body http and grpc servers parameter in MB to handle uploading of big files. Default is 4 MB.
  final int? httpMaxRequestSize;
  /// Dapr max size of http header read buffer in KB to handle when sending multi-KB headers. Default is 65KB.
  final int? httpReadBufferSize;
  /// Sets the log level for the Dapr sidecar. Allowed values are debug, info, warn, error. Default is info.
  final String? logLevel;
  /// Maximum number of concurrent requests, events handled by the Dapr sidecar
  final int? maxConcurrency;

  /// Creates a new [Dapr].
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
  Dapr({
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
      'appHealth': ?appHealth == null ? null : appHealth!.toMap(),
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

  factory Dapr.fromMap(Map<String, dynamic> map) {
    return Dapr(
      appHealth: map['appHealth'] == null ? null : DaprAppHealth.fromMap((map['appHealth'] as Map).cast<String, dynamic>()),
      appId: map['appId'] == null ? null : map['appId'] as String,
      appPort: map['appPort'] == null ? null : map['appPort'] as int,
      appProtocol: map['appProtocol'] == null ? null : map['appProtocol'] as String,
      enableApiLogging: map['enableApiLogging'] == null ? null : map['enableApiLogging'] as bool,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      httpMaxRequestSize: map['httpMaxRequestSize'] == null ? null : map['httpMaxRequestSize'] as int,
      httpReadBufferSize: map['httpReadBufferSize'] == null ? null : map['httpReadBufferSize'] as int,
      logLevel: map['logLevel'] == null ? null : map['logLevel'] as String,
      maxConcurrency: map['maxConcurrency'] == null ? null : map['maxConcurrency'] as int,
    );
  }
}

