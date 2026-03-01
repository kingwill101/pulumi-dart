// ignore_for_file: unused_element, unnecessary_cast

import 'standard_rollout_policy_response_container_v1beta1.dart';

/// Settings for blue-green upgrade.
class BlueGreenSettingsResponseContainerV1beta1 {
  /// Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.
  final String nodePoolSoakDuration;

  /// Standard policy for the blue-green upgrade.
  final StandardRolloutPolicyResponseContainerV1beta1 standardRolloutPolicy;

  /// Creates a new [BlueGreenSettingsResponseContainerV1beta1].
  /// [nodePoolSoakDuration] Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.
  /// [standardRolloutPolicy] Standard policy for the blue-green upgrade.
  BlueGreenSettingsResponseContainerV1beta1({
    required this.nodePoolSoakDuration,
    required this.standardRolloutPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePoolSoakDuration': nodePoolSoakDuration,
      'standardRolloutPolicy': standardRolloutPolicy.toMap(),
    };
  }

  factory BlueGreenSettingsResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return BlueGreenSettingsResponseContainerV1beta1(
      nodePoolSoakDuration: map['nodePoolSoakDuration'] as String,
      standardRolloutPolicy:
          StandardRolloutPolicyResponseContainerV1beta1.fromMap(
            (map['standardRolloutPolicy'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
