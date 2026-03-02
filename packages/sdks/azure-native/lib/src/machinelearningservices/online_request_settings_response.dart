// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Online deployment scoring requests configuration.
class OnlineRequestSettingsResponse {
  /// The number of maximum concurrent requests per node allowed per deployment. Defaults to 1.
  final pulumi.Input<int>? maxConcurrentRequestsPerInstance;
  /// (Deprecated for Managed Online Endpoints) The maximum amount of time a request will stay in the queue in ISO 8601 format.
  /// Defaults to 500ms.
  /// (Now increase `request_timeout_ms` to account for any networking/queue delays)
  final pulumi.Input<String>? maxQueueWait;
  /// The scoring timeout in ISO 8601 format.
  /// Defaults to 5000ms.
  final pulumi.Input<String>? requestTimeout;

  /// Creates a new [OnlineRequestSettingsResponse].
  /// [maxConcurrentRequestsPerInstance] The number of maximum concurrent requests per node allowed per deployment. Defaults to 1.
  /// [maxQueueWait] (Deprecated for Managed Online Endpoints) The maximum amount of time a request will stay in the queue in ISO 8601 format.
  /// [requestTimeout] The scoring timeout in ISO 8601 format.
  OnlineRequestSettingsResponse({
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

  factory OnlineRequestSettingsResponse.fromMap(Map<String, dynamic> map) {
    return OnlineRequestSettingsResponse(
      maxConcurrentRequestsPerInstance: map['maxConcurrentRequestsPerInstance'] == null ? null : (map['maxConcurrentRequestsPerInstance']! as int).input(),
      maxQueueWait: map['maxQueueWait'] == null ? null : (map['maxQueueWait']! as String).input(),
      requestTimeout: map['requestTimeout'] == null ? null : (map['requestTimeout']! as String).input(),
    );
  }
}

