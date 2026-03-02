// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_distribution_configuration_distribution_fast_launch_configuration_launch_template.dart';
import 'get_distribution_configuration_distribution_fast_launch_configuration_snapshot_configuration.dart';

class GetDistributionConfigurationDistributionFastLaunchConfiguration {
  /// The account ID that this configuration applies to.
  final pulumi.Input<String> accountId;
  /// A Boolean that represents the current state of faster launching for the Windows AMI.
  final pulumi.Input<bool> enabled;
  /// Nested list of launch templates that the fast-launch enabled Windows AMI uses when it launches Windows instances to create pre-provisioned snapshots.
  final pulumi.Input<List<GetDistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate>> launchTemplates;
  /// The maximum number of parallel instances that are launched for creating resources.
  final pulumi.Input<int> maxParallelLaunches;
  /// Nested list of configurations for managing the number of snapshots that are created from pre-provisioned instances for the Windows AMI when faster launching is enabled.
  final pulumi.Input<List<GetDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration>> snapshotConfigurations;

  /// Creates a new [GetDistributionConfigurationDistributionFastLaunchConfiguration].
  /// [accountId] The account ID that this configuration applies to.
  /// [enabled] A Boolean that represents the current state of faster launching for the Windows AMI.
  /// [launchTemplates] Nested list of launch templates that the fast-launch enabled Windows AMI uses when it launches Windows instances to create pre-provisioned snapshots.
  /// [maxParallelLaunches] The maximum number of parallel instances that are launched for creating resources.
  /// [snapshotConfigurations] Nested list of configurations for managing the number of snapshots that are created from pre-provisioned instances for the Windows AMI when faster launching is enabled.
  GetDistributionConfigurationDistributionFastLaunchConfiguration({
    required this.accountId,
    required this.enabled,
    required this.launchTemplates,
    required this.maxParallelLaunches,
    required this.snapshotConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'enabled': enabled,
      'launchTemplates': pulumi.Input.mapInputValue<List<GetDistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate>, List<Map<String, dynamic>>>(launchTemplates, (value) => pulumi.Input.encodeList<GetDistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxParallelLaunches': maxParallelLaunches,
      'snapshotConfigurations': pulumi.Input.mapInputValue<List<GetDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration>, List<Map<String, dynamic>>>(snapshotConfigurations, (value) => pulumi.Input.encodeList<GetDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDistributionConfigurationDistributionFastLaunchConfiguration.fromMap(Map<String, dynamic> map) {
    return GetDistributionConfigurationDistributionFastLaunchConfiguration(
      accountId: (map['accountId'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
      launchTemplates: (pulumi.Input.decodeList<GetDistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate>(map['launchTemplates']!, (value) => GetDistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maxParallelLaunches: (map['maxParallelLaunches'] as int).input(),
      snapshotConfigurations: (pulumi.Input.decodeList<GetDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration>(map['snapshotConfigurations']!, (value) => GetDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

