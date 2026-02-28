// ignore_for_file: unused_element, unnecessary_cast

class DistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration {
  /// The number of pre-provisioned snapshots to keep on hand for a fast-launch enabled Windows AMI.
  final int? targetResourceCount;

  /// Creates a new [DistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration].
  /// [targetResourceCount] The number of pre-provisioned snapshots to keep on hand for a fast-launch enabled Windows AMI.
  DistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration({
    this.targetResourceCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final targetResourceCountValue = targetResourceCount;
    if (targetResourceCountValue != null) {
      map['targetResourceCount'] = targetResourceCountValue;
    }
    return map;
  }

  factory DistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration.fromMap(
      Map<String, dynamic> map) {
    return DistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration(
      targetResourceCount: map['targetResourceCount'] == null
          ? null
          : map['targetResourceCount'] as int,
    );
  }
}
