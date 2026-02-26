// ignore_for_file: unused_element, unnecessary_cast

class NodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy {
  /// Time in seconds to wait after cordoning the blue pool before draining the nodes.
  final String? waitForDrainDuration;

  NodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy({
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

  factory NodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy.fromMap(
      Map<String, dynamic> map) {
    return NodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy(
      waitForDrainDuration: map['waitForDrainDuration'] == null
          ? null
          : map['waitForDrainDuration'] as String,
    );
  }
}
