// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_distribution_configuration_distribution_fast_launch_configuration_launch_template/get_distribution_configuration_distribution_fast_launch_configuration_launch_template.dart';
import '../get_distribution_configuration_distribution_fast_launch_configuration_snapshot_configuration/get_distribution_configuration_distribution_fast_launch_configuration_snapshot_configuration.dart';

class GetDistributionConfigurationDistributionFastLaunchConfiguration {
  /// The account ID that this configuration applies to.
  final String accountId;

  /// A Boolean that represents the current state of faster launching for the Windows AMI.
  final bool enabled;

  /// Nested list of launch templates that the fast-launch enabled Windows AMI uses when it launches Windows instances to create pre-provisioned snapshots.
  final List<
          GetDistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate>
      launchTemplates;

  /// The maximum number of parallel instances that are launched for creating resources.
  final int maxParallelLaunches;

  /// Nested list of configurations for managing the number of snapshots that are created from pre-provisioned instances for the Windows AMI when faster launching is enabled.
  final List<
          GetDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration>
      snapshotConfigurations;

  GetDistributionConfigurationDistributionFastLaunchConfiguration({
    required this.accountId,
    required this.enabled,
    required this.launchTemplates,
    required this.maxParallelLaunches,
    required this.snapshotConfigurations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['enabled'] = enabled;
    map['launchTemplates'] = Input.encodeList<
        GetDistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate,
        Map<String, dynamic>>(launchTemplates, (value) => value.toMap());
    map['maxParallelLaunches'] = maxParallelLaunches;
    map['snapshotConfigurations'] = Input.encodeList<
        GetDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration,
        Map<String, dynamic>>(snapshotConfigurations, (value) => value.toMap());
    return map;
  }

  factory GetDistributionConfigurationDistributionFastLaunchConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetDistributionConfigurationDistributionFastLaunchConfiguration(
      accountId: map['accountId'] as String,
      enabled: map['enabled'] as bool,
      launchTemplates: Input.decodeList<
              GetDistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate>(
          map['launchTemplates'],
          (value) =>
              GetDistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate
                  .fromMap((value as Map).cast<String, dynamic>())),
      maxParallelLaunches: map['maxParallelLaunches'] as int,
      snapshotConfigurations: Input.decodeList<
              GetDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration>(
          map['snapshotConfigurations'],
          (value) =>
              GetDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
