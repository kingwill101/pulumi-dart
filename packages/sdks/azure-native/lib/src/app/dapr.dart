// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_app_health.dart';

/// Container App Dapr configuration.
class Dapr {
  /// Dapr application health check configuration
  final pulumi.Input<DaprAppHealth>? appHealth;
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
      'appHealth': ?pulumi.Input.mapOptionalInputValue<DaprAppHealth, Map<String, dynamic>>(appHealth, (value) => value.toMap()),
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
      appHealth: map['appHealth'] == null ? null : (DaprAppHealth.fromMap((map['appHealth']! as Map).cast<String, dynamic>())).input(),
      appId: map['appId'] == null ? null : (map['appId']! as String).input(),
      appPort: map['appPort'] == null ? null : (map['appPort']! as int).input(),
      appProtocol: map['appProtocol'] == null ? null : (map['appProtocol']! as String).input(),
      enableApiLogging: map['enableApiLogging'] == null ? null : (map['enableApiLogging']! as bool).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      httpMaxRequestSize: map['httpMaxRequestSize'] == null ? null : (map['httpMaxRequestSize']! as int).input(),
      httpReadBufferSize: map['httpReadBufferSize'] == null ? null : (map['httpReadBufferSize']! as int).input(),
      logLevel: map['logLevel'] == null ? null : (map['logLevel']! as String).input(),
      maxConcurrency: map['maxConcurrency'] == null ? null : (map['maxConcurrency']! as int).input(),
    );
  }
}

