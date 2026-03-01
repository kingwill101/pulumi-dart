// ignore_for_file: unused_element, unnecessary_cast

class GetClusterClusterAutoscalingAutoProvisioningDefaultManagementUpgradeOption {
  /// This field is set when upgrades are about to commence with the approximate start time for the upgrades, in RFC3339 text format.
  final String autoUpgradeStartTime;

  /// This field is set when upgrades are about to commence with the description of the upgrade.
  final String description;

  /// Creates a new [GetClusterClusterAutoscalingAutoProvisioningDefaultManagementUpgradeOption].
  /// [autoUpgradeStartTime] This field is set when upgrades are about to commence with the approximate start time for the upgrades, in RFC3339 text format.
  /// [description] This field is set when upgrades are about to commence with the description of the upgrade.
  GetClusterClusterAutoscalingAutoProvisioningDefaultManagementUpgradeOption({
    required this.autoUpgradeStartTime,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeStartTime': autoUpgradeStartTime,
      'description': description,
    };
  }

  factory GetClusterClusterAutoscalingAutoProvisioningDefaultManagementUpgradeOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterClusterAutoscalingAutoProvisioningDefaultManagementUpgradeOption(
      autoUpgradeStartTime: map['autoUpgradeStartTime'] as String,
      description: map['description'] as String,
    );
  }
}
