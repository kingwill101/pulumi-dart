// ignore_for_file: unused_element, unnecessary_cast

import 'standard_rollout_policy_response_container_v1beta1.dart';

/// Settings for blue-green upgrade.
class BlueGreenSettingsResponseContainerV1beta1 {
  /// Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.
  final String nodePoolSoakDuration;

  /// Standard policy for the blue-green upgrade.
  final StandardRolloutPolicyResponseContainerV1beta1 standardRolloutPolicy;

  BlueGreenSettingsResponseContainerV1beta1({
    required this.nodePoolSoakDuration,
    required this.standardRolloutPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodePoolSoakDuration'] = nodePoolSoakDuration;
    map['standardRolloutPolicy'] = standardRolloutPolicy.toMap();
    return map;
  }

  factory BlueGreenSettingsResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return BlueGreenSettingsResponseContainerV1beta1(
      nodePoolSoakDuration: map['nodePoolSoakDuration'] as String,
      standardRolloutPolicy:
          StandardRolloutPolicyResponseContainerV1beta1.fromMap(
              (map['standardRolloutPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}
