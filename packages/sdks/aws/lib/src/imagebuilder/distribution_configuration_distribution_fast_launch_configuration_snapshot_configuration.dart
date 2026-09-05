// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration {
  /// The number of pre-provisioned snapshots to keep on hand for a fast-launch enabled Windows AMI.
  final pulumi.Input<int?>? targetResourceCount;

  /// Creates a new [DistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration].
  /// [targetResourceCount] The number of pre-provisioned snapshots to keep on hand for a fast-launch enabled Windows AMI.
  const DistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration({
    this.targetResourceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetResourceCount': ?targetResourceCount,
    };
  }

  factory DistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration.fromMap(Map<String, dynamic> map) {
    return DistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration(
      targetResourceCount: (() { final guardedValue = map['targetResourceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
