// ignore_for_file: unused_element, unnecessary_cast

import 'polling_options_response2.dart';

/// Async options that determine when a resource should finish.
class AsyncOptionsResponse2 {
  /// Method regex where this policy will apply.
  final String methodMatch;

  /// Deployment manager will poll instances for this API resource setting a RUNNING state, and blocking until polling conditions tell whether the resource is completed or failed.
  final PollingOptionsResponse2 pollingOptions;

  AsyncOptionsResponse2({
    required this.methodMatch,
    required this.pollingOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['methodMatch'] = methodMatch;
    map['pollingOptions'] = pollingOptions.toMap();
    return map;
  }

  factory AsyncOptionsResponse2.fromMap(Map<String, dynamic> map) {
    return AsyncOptionsResponse2(
      methodMatch: map['methodMatch'] as String,
      pollingOptions: PollingOptionsResponse2.fromMap(
          (map['pollingOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
