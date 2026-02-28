// ignore_for_file: unused_element, unnecessary_cast

import 'standard_rollout_policy.dart';

/// Settings for blue-green upgrade.
class BlueGreenSettings {
  /// Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.
  final String? nodePoolSoakDuration;
  /// Standard policy for the blue-green upgrade.
  final StandardRolloutPolicy? standardRolloutPolicy;

  /// Creates a new [BlueGreenSettings].
  /// [nodePoolSoakDuration] Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.
  /// [standardRolloutPolicy] Standard policy for the blue-green upgrade.
  BlueGreenSettings({
    this.nodePoolSoakDuration,
    this.standardRolloutPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePoolSoakDuration': ?nodePoolSoakDuration,
      'standardRolloutPolicy': ?standardRolloutPolicy == null ? null : standardRolloutPolicy!.toMap(),
    };
  }

  factory BlueGreenSettings.fromMap(Map<String, dynamic> map) {
    return BlueGreenSettings(
      nodePoolSoakDuration: map['nodePoolSoakDuration'] == null ? null : map['nodePoolSoakDuration'] as String,
      standardRolloutPolicy: map['standardRolloutPolicy'] == null ? null : StandardRolloutPolicy.fromMap((map['standardRolloutPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

