// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Online deployment scoring requests configuration.
class OnlineRequestSettingsResponse {
  /// The number of maximum concurrent requests per node allowed per deployment. Defaults to 1.
  final pulumi.Input<int?>? maxConcurrentRequestsPerInstance;
  /// (Deprecated for Managed Online Endpoints) The maximum amount of time a request will stay in the queue in ISO 8601 format.
  /// Defaults to 500ms.
  /// (Now increase `request_timeout_ms` to account for any networking/queue delays)
  final pulumi.Input<String?>? maxQueueWait;
  /// The scoring timeout in ISO 8601 format.
  /// Defaults to 5000ms.
  final pulumi.Input<String?>? requestTimeout;

  /// Creates a new [OnlineRequestSettingsResponse].
  /// [maxConcurrentRequestsPerInstance] The number of maximum concurrent requests per node allowed per deployment. Defaults to 1.
  /// [maxQueueWait] (Deprecated for Managed Online Endpoints) The maximum amount of time a request will stay in the queue in ISO 8601 format.
  /// [requestTimeout] The scoring timeout in ISO 8601 format.
  OnlineRequestSettingsResponse({
    pulumi.Input<int?>? maxConcurrentRequestsPerInstance,
    pulumi.Input<String?>? maxQueueWait,
    pulumi.Input<String?>? requestTimeout,
  }) : maxConcurrentRequestsPerInstance = maxConcurrentRequestsPerInstance ?? pulumi.Input.fromValue(1), maxQueueWait = maxQueueWait ?? pulumi.Input.fromValue('PT0.5S'), requestTimeout = requestTimeout ?? pulumi.Input.fromValue('PT5S');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConcurrentRequestsPerInstance': ?maxConcurrentRequestsPerInstance,
      'maxQueueWait': ?maxQueueWait,
      'requestTimeout': ?requestTimeout,
    };
  }

  factory OnlineRequestSettingsResponse.fromMap(Map<String, dynamic> map) {
    return OnlineRequestSettingsResponse(
      maxConcurrentRequestsPerInstance: (() { final guardedValue = map['maxConcurrentRequestsPerInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxQueueWait: (() { final guardedValue = map['maxQueueWait']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestTimeout: (() { final guardedValue = map['requestTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
