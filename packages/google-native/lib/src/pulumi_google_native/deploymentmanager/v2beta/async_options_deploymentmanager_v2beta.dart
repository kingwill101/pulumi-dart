// ignore_for_file: unused_element, unnecessary_cast

import 'polling_options_deploymentmanager_v2beta.dart';

/// Async options that determine when a resource should finish.
class AsyncOptionsDeploymentmanagerV2beta {
  /// Method regex where this policy will apply.
  final String? methodMatch;

  /// Deployment manager will poll instances for this API resource setting a RUNNING state, and blocking until polling conditions tell whether the resource is completed or failed.
  final PollingOptionsDeploymentmanagerV2beta? pollingOptions;

  AsyncOptionsDeploymentmanagerV2beta({
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

  factory AsyncOptionsDeploymentmanagerV2beta.fromMap(
      Map<String, dynamic> map) {
    return AsyncOptionsDeploymentmanagerV2beta(
      methodMatch:
          map['methodMatch'] == null ? null : map['methodMatch'] as String,
      pollingOptions: map['pollingOptions'] == null
          ? null
          : PollingOptionsDeploymentmanagerV2beta.fromMap(
              (map['pollingOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
