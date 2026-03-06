// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration {
  /// The number of pre-provisioned snapshots to keep on hand for a fast-launch enabled Windows AMI.
  final pulumi.Input<int> targetResourceCount;

  /// Creates a new [GetDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration].
  /// [targetResourceCount] The number of pre-provisioned snapshots to keep on hand for a fast-launch enabled Windows AMI.
  const GetDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration({
    required this.targetResourceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetResourceCount': targetResourceCount,
    };
  }

  factory GetDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration.fromMap(Map<String, dynamic> map) {
    return GetDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration(
      targetResourceCount: pulumi.Input.fromValue(map['targetResourceCount'] as int),
    );
  }
}

