// ignore_for_file: unused_element, unnecessary_cast

import 'polling_options.dart';

/// Async options that determine when a resource should finish.
class AsyncOptions {
  /// Method regex where this policy will apply.
  final String? methodMatch;

  /// Deployment manager will poll instances for this API resource setting a RUNNING state, and blocking until polling conditions tell whether the resource is completed or failed.
  final PollingOptions? pollingOptions;

  AsyncOptions({
    this.methodMatch,
    this.pollingOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final methodMatchValue = methodMatch;
    if (methodMatchValue != null) {
      map['methodMatch'] = methodMatchValue;
    }
    final pollingOptionsValue = pollingOptions;
    if (pollingOptionsValue != null) {
      map['pollingOptions'] = pollingOptionsValue.toMap();
    }
    return map;
  }

  factory AsyncOptions.fromMap(Map<String, dynamic> map) {
    return AsyncOptions(
      methodMatch:
          map['methodMatch'] == null ? null : map['methodMatch'] as String,
      pollingOptions: map['pollingOptions'] == null
          ? null
          : PollingOptions.fromMap(
              (map['pollingOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
