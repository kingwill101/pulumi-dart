// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolUpgradeSettingBlueGreenSettingAutoscaledRolloutPolicy {
  /// Time in seconds to wait after cordoning the blue pool before draining the nodes.
  final String waitForDrainDuration;

  GetClusterNodePoolUpgradeSettingBlueGreenSettingAutoscaledRolloutPolicy({
    required this.waitForDrainDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['waitForDrainDuration'] = waitForDrainDuration;
    return map;
  }

  factory GetClusterNodePoolUpgradeSettingBlueGreenSettingAutoscaledRolloutPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolUpgradeSettingBlueGreenSettingAutoscaledRolloutPolicy(
      waitForDrainDuration: map['waitForDrainDuration'] as String,
    );
  }
}
