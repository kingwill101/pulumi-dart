// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterAutoscalingAutoProvisioningDefaultsManagementUpgradeOption {
  /// This field is set when upgrades are about to commence with the approximate start time for the upgrades, in RFC3339 text format.
  final String? autoUpgradeStartTime;

  /// Description of the cluster.
  final String? description;

  ClusterClusterAutoscalingAutoProvisioningDefaultsManagementUpgradeOption({
    this.autoUpgradeStartTime,
    this.description,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoUpgradeStartTimeValue = autoUpgradeStartTime;
    if (autoUpgradeStartTimeValue != null) {
      map['autoUpgradeStartTime'] = autoUpgradeStartTimeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    return map;
  }

  factory ClusterClusterAutoscalingAutoProvisioningDefaultsManagementUpgradeOption.fromMap(
      Map<String, dynamic> map) {
    return ClusterClusterAutoscalingAutoProvisioningDefaultsManagementUpgradeOption(
      autoUpgradeStartTime: map['autoUpgradeStartTime'] == null
          ? null
          : map['autoUpgradeStartTime'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
    );
  }
}
