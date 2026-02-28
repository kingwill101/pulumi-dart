// ignore_for_file: unused_element, unnecessary_cast

class GetDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration {
  /// The number of pre-provisioned snapshots to keep on hand for a fast-launch enabled Windows AMI.
  final int targetResourceCount;

  /// Creates a new [GetDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration].
  /// [targetResourceCount] The number of pre-provisioned snapshots to keep on hand for a fast-launch enabled Windows AMI.
  GetDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration({
    required this.targetResourceCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetResourceCount'] = targetResourceCount;
    return map;
  }

  factory GetDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration(
      targetResourceCount: map['targetResourceCount'] as int,
    );
  }
}
