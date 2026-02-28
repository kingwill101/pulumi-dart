// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_success_policy_final_state.dart';

/// Policy that dictates the behavior for the task after it completes successfully.
class GoogleCloudIntegrationsV1alphaSuccessPolicy {
  /// State to which the execution snapshot status will be set if the task succeeds.
  final GoogleCloudIntegrationsV1alphaSuccessPolicyFinalState? finalState;

  /// Creates a new [GoogleCloudIntegrationsV1alphaSuccessPolicy].
  /// [finalState] State to which the execution snapshot status will be set if the task succeeds.
  GoogleCloudIntegrationsV1alphaSuccessPolicy({
    this.finalState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'finalState': ?finalState == null ? null : finalState!.value,
    };
  }

  factory GoogleCloudIntegrationsV1alphaSuccessPolicy.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaSuccessPolicy(
      finalState: map['finalState'] == null ? null : GoogleCloudIntegrationsV1alphaSuccessPolicyFinalState.fromValue(map['finalState'] as String),
    );
  }
}

