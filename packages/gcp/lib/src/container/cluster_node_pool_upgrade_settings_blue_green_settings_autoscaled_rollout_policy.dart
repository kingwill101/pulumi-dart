// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy {
  /// Time in seconds to wait after cordoning the blue pool before draining the nodes.
  final String? waitForDrainDuration;

  /// Creates a new [ClusterNodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy].
  /// [waitForDrainDuration] Time in seconds to wait after cordoning the blue pool before draining the nodes.
  ClusterNodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy({
    this.waitForDrainDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final waitForDrainDurationValue = waitForDrainDuration;
    if (waitForDrainDurationValue != null) {
      map['waitForDrainDuration'] = waitForDrainDurationValue;
    }
    return map;
  }

  factory ClusterNodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy(
      waitForDrainDuration: map['waitForDrainDuration'] == null
          ? null
          : map['waitForDrainDuration'] as String,
    );
  }
}
