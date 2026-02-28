// ignore_for_file: unused_element, unnecessary_cast

import 'postdeploy.dart';
import 'predeploy.dart';

/// CanaryDeployment represents the canary deployment configuration
class CanaryDeployment {
  /// The percentage based deployments that will occur as a part of a `Rollout`. List is expected in ascending order and each integer n is 0 <= n < 100.
  final List<int> percentages;
  /// Optional. Configuration for the postdeploy job of the last phase. If this is not configured, there will be no postdeploy job for this phase.
  final Postdeploy? postdeploy;
  /// Optional. Configuration for the predeploy job of the first phase. If this is not configured, there will be no predeploy job for this phase.
  final Predeploy? predeploy;
  /// Whether to run verify tests after each percentage deployment.
  final bool? verify;

  /// Creates a new [CanaryDeployment].
  /// [percentages] The percentage based deployments that will occur as a part of a `Rollout`. List is expected in ascending order and each integer n is 0 <= n < 100.
  /// [postdeploy] Optional. Configuration for the postdeploy job of the last phase. If this is not configured, there will be no postdeploy job for this phase.
  /// [predeploy] Optional. Configuration for the predeploy job of the first phase. If this is not configured, there will be no predeploy job for this phase.
  /// [verify] Whether to run verify tests after each percentage deployment.
  CanaryDeployment({
    required this.percentages,
    this.postdeploy,
    this.predeploy,
    this.verify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentages': percentages,
      'postdeploy': ?postdeploy == null ? null : postdeploy!.toMap(),
      'predeploy': ?predeploy == null ? null : predeploy!.toMap(),
      'verify': ?verify,
    };
  }

  factory CanaryDeployment.fromMap(Map<String, dynamic> map) {
    return CanaryDeployment(
      percentages: (map['percentages'] as List).cast<int>(),
      postdeploy: map['postdeploy'] == null ? null : Postdeploy.fromMap((map['postdeploy'] as Map).cast<String, dynamic>()),
      predeploy: map['predeploy'] == null ? null : Predeploy.fromMap((map['predeploy'] as Map).cast<String, dynamic>()),
      verify: map['verify'] == null ? null : map['verify'] as bool,
    );
  }
}

