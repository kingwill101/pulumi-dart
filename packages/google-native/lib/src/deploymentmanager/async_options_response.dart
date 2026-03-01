// ignore_for_file: unused_element, unnecessary_cast

import 'polling_options_response.dart';

/// Async options that determine when a resource should finish.
class AsyncOptionsResponse {
  /// Method regex where this policy will apply.
  final String methodMatch;

  /// Deployment manager will poll instances for this API resource setting a RUNNING state, and blocking until polling conditions tell whether the resource is completed or failed.
  final PollingOptionsResponse pollingOptions;

  /// Creates a new [AsyncOptionsResponse].
  /// [methodMatch] Method regex where this policy will apply.
  /// [pollingOptions] Deployment manager will poll instances for this API resource setting a RUNNING state, and blocking until polling conditions tell whether the resource is completed or failed.
  AsyncOptionsResponse({
    required this.methodMatch,
    required this.pollingOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methodMatch': methodMatch,
      'pollingOptions': pollingOptions.toMap(),
    };
  }

  factory AsyncOptionsResponse.fromMap(Map<String, dynamic> map) {
    return AsyncOptionsResponse(
      methodMatch: map['methodMatch'] as String,
      pollingOptions: PollingOptionsResponse.fromMap(
        (map['pollingOptions'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
