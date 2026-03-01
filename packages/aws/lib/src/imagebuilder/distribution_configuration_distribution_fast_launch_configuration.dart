// ignore_for_file: unused_element, unnecessary_cast

import 'distribution_configuration_distribution_fast_launch_configuration_launch_template.dart';
import 'distribution_configuration_distribution_fast_launch_configuration_snapshot_configuration.dart';

class DistributionConfigurationDistributionFastLaunchConfiguration {
  /// The owner account ID for the fast-launch enabled Windows AMI.
  final String accountId;

  /// A Boolean that represents the current state of faster launching for the Windows AMI. Set to `true` to start using Windows faster launching, or `false` to stop using it.
  final bool enabled;

  /// Configuration block for the launch template that the fast-launch enabled Windows AMI uses when it launches Windows instances to create pre-provisioned snapshots. Detailed below.
  final DistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate?
  launchTemplate;

  /// The maximum number of parallel instances that are launched for creating resources.
  final int? maxParallelLaunches;

  /// Configuration block for managing the number of snapshots that are created from pre-provisioned instances for the Windows AMI when faster launching is enabled. Detailed below.
  final DistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration?
  snapshotConfiguration;

  /// Creates a new [DistributionConfigurationDistributionFastLaunchConfiguration].
  /// [accountId] The owner account ID for the fast-launch enabled Windows AMI.
  /// [enabled] A Boolean that represents the current state of faster launching for the Windows AMI. Set to `true` to start using Windows faster launching, or `false` to stop using it.
  /// [launchTemplate] Configuration block for the launch template that the fast-launch enabled Windows AMI uses when it launches Windows instances to create pre-provisioned snapshots. Detailed below.
  /// [maxParallelLaunches] The maximum number of parallel instances that are launched for creating resources.
  /// [snapshotConfiguration] Configuration block for managing the number of snapshots that are created from pre-provisioned instances for the Windows AMI when faster launching is enabled. Detailed below.
  DistributionConfigurationDistributionFastLaunchConfiguration({
    required this.accountId,
    required this.enabled,
    this.launchTemplate,
    this.maxParallelLaunches,
    this.snapshotConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'enabled': enabled,
      'launchTemplate': ?launchTemplate == null
          ? null
          : launchTemplate!.toMap(),
      'maxParallelLaunches': ?maxParallelLaunches,
      'snapshotConfiguration': ?snapshotConfiguration == null
          ? null
          : snapshotConfiguration!.toMap(),
    };
  }

  factory DistributionConfigurationDistributionFastLaunchConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return DistributionConfigurationDistributionFastLaunchConfiguration(
      accountId: map['accountId'] as String,
      enabled: map['enabled'] as bool,
      launchTemplate: map['launchTemplate'] == null
          ? null
          : DistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate.fromMap(
              (map['launchTemplate'] as Map).cast<String, dynamic>(),
            ),
      maxParallelLaunches: map['maxParallelLaunches'] == null
          ? null
          : map['maxParallelLaunches'] as int,
      snapshotConfiguration: map['snapshotConfiguration'] == null
          ? null
          : DistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration.fromMap(
              (map['snapshotConfiguration'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
