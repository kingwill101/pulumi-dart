// ignore_for_file: unused_element, unnecessary_cast

import 'postdeploy_response.dart';
import 'predeploy_response.dart';

/// CanaryDeployment represents the canary deployment configuration
class CanaryDeploymentResponse {
  /// The percentage based deployments that will occur as a part of a `Rollout`. List is expected in ascending order and each integer n is 0 <= n < 100.
  final List<int> percentages;

  /// Optional. Configuration for the postdeploy job of the last phase. If this is not configured, there will be no postdeploy job for this phase.
  final PostdeployResponse postdeploy;

  /// Optional. Configuration for the predeploy job of the first phase. If this is not configured, there will be no predeploy job for this phase.
  final PredeployResponse predeploy;

  /// Whether to run verify tests after each percentage deployment.
  final bool verify;

  CanaryDeploymentResponse({
    required this.percentages,
    required this.postdeploy,
    required this.predeploy,
    required this.verify,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['percentages'] = percentages;
    map['postdeploy'] = postdeploy.toMap();
    map['predeploy'] = predeploy.toMap();
    map['verify'] = verify;
    return map;
  }

  factory CanaryDeploymentResponse.fromMap(Map<String, dynamic> map) {
    return CanaryDeploymentResponse(
      percentages: (map['percentages'] as List).cast<int>(),
      postdeploy: PostdeployResponse.fromMap(
          (map['postdeploy'] as Map).cast<String, dynamic>()),
      predeploy: PredeployResponse.fromMap(
          (map['predeploy'] as Map).cast<String, dynamic>()),
      verify: map['verify'] as bool,
    );
  }
}
