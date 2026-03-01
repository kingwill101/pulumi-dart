// ignore_for_file: unused_element, unnecessary_cast

import 'standard_rollout_policy_response.dart';

/// Settings for blue-green upgrade.
class BlueGreenSettingsResponse {
  /// Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.
  final String nodePoolSoakDuration;

  /// Standard policy for the blue-green upgrade.
  final StandardRolloutPolicyResponse standardRolloutPolicy;

  /// Creates a new [BlueGreenSettingsResponse].
  /// [nodePoolSoakDuration] Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.
  /// [standardRolloutPolicy] Standard policy for the blue-green upgrade.
  BlueGreenSettingsResponse({
    required this.nodePoolSoakDuration,
    required this.standardRolloutPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePoolSoakDuration': nodePoolSoakDuration,
      'standardRolloutPolicy': standardRolloutPolicy.toMap(),
    };
  }

  factory BlueGreenSettingsResponse.fromMap(Map<String, dynamic> map) {
    return BlueGreenSettingsResponse(
      nodePoolSoakDuration: map['nodePoolSoakDuration'] as String,
      standardRolloutPolicy: StandardRolloutPolicyResponse.fromMap(
        (map['standardRolloutPolicy'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
