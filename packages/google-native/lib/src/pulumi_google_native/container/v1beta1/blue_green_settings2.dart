// ignore_for_file: unused_element, unnecessary_cast

import 'standard_rollout_policy2.dart';

/// Settings for blue-green upgrade.
class BlueGreenSettings2 {
  /// Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.
  final String? nodePoolSoakDuration;

  /// Standard policy for the blue-green upgrade.
  final StandardRolloutPolicy2? standardRolloutPolicy;

  BlueGreenSettings2({
    this.nodePoolSoakDuration,
    this.standardRolloutPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nodePoolSoakDurationValue = nodePoolSoakDuration;
    if (nodePoolSoakDurationValue != null) {
      map['nodePoolSoakDuration'] = nodePoolSoakDurationValue;
    }
    final standardRolloutPolicyValue = standardRolloutPolicy;
    if (standardRolloutPolicyValue != null) {
      map['standardRolloutPolicy'] = standardRolloutPolicyValue.toMap();
    }
    return map;
  }

  factory BlueGreenSettings2.fromMap(Map<String, dynamic> map) {
    return BlueGreenSettings2(
      nodePoolSoakDuration: map['nodePoolSoakDuration'] == null
          ? null
          : map['nodePoolSoakDuration'] as String,
      standardRolloutPolicy: map['standardRolloutPolicy'] == null
          ? null
          : StandardRolloutPolicy2.fromMap(
              (map['standardRolloutPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}
