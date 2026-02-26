// ignore_for_file: unused_element, unnecessary_cast

import 'standard_rollout_policy_response2.dart';

/// Settings for blue-green upgrade.
class BlueGreenSettingsResponse2 {
  /// Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.
  final String nodePoolSoakDuration;

  /// Standard policy for the blue-green upgrade.
  final StandardRolloutPolicyResponse2 standardRolloutPolicy;

  BlueGreenSettingsResponse2({
    required this.nodePoolSoakDuration,
    required this.standardRolloutPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodePoolSoakDuration'] = nodePoolSoakDuration;
    map['standardRolloutPolicy'] = standardRolloutPolicy.toMap();
    return map;
  }

  factory BlueGreenSettingsResponse2.fromMap(Map<String, dynamic> map) {
    return BlueGreenSettingsResponse2(
      nodePoolSoakDuration: map['nodePoolSoakDuration'] as String,
      standardRolloutPolicy: StandardRolloutPolicyResponse2.fromMap(
          (map['standardRolloutPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}
