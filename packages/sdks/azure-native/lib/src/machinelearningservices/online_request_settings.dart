// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Online deployment scoring requests configuration.
class OnlineRequestSettings {
  /// The number of maximum concurrent requests per node allowed per deployment. Defaults to 1.
  final pulumi.Input<int>? maxConcurrentRequestsPerInstance;
  /// (Deprecated for Managed Online Endpoints) The maximum amount of time a request will stay in the queue in ISO 8601 format.
  /// Defaults to 500ms.
  /// (Now increase `request_timeout_ms` to account for any networking/queue delays)
  final pulumi.Input<String>? maxQueueWait;
  /// The scoring timeout in ISO 8601 format.
  /// Defaults to 5000ms.
  final pulumi.Input<String>? requestTimeout;

  /// Creates a new [OnlineRequestSettings].
  /// [maxConcurrentRequestsPerInstance] The number of maximum concurrent requests per node allowed per deployment. Defaults to 1.
  /// [maxQueueWait] (Deprecated for Managed Online Endpoints) The maximum amount of time a request will stay in the queue in ISO 8601 format.
  /// [requestTimeout] The scoring timeout in ISO 8601 format.
  const OnlineRequestSettings({
    this.maxConcurrentRequestsPerInstance,
    this.maxQueueWait,
    this.requestTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConcurrentRequestsPerInstance': ?maxConcurrentRequestsPerInstance,
      'maxQueueWait': ?maxQueueWait,
      'requestTimeout': ?requestTimeout,
    };
  }

  factory OnlineRequestSettings.fromMap(Map<String, dynamic> map) {
    return OnlineRequestSettings(
      maxConcurrentRequestsPerInstance: (() { final guardedValue = map['maxConcurrentRequestsPerInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxQueueWait: (() { final guardedValue = map['maxQueueWait']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestTimeout: (() { final guardedValue = map['requestTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
