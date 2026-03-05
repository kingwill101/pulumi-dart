// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_configuration_distribution_fast_launch_configuration_launch_template.dart';
import 'distribution_configuration_distribution_fast_launch_configuration_snapshot_configuration.dart';

class DistributionConfigurationDistributionFastLaunchConfiguration {
  /// The owner account ID for the fast-launch enabled Windows AMI.
  final pulumi.Input<String> accountId;
  /// A Boolean that represents the current state of faster launching for the Windows AMI. Set to `true` to start using Windows faster launching, or `false` to stop using it.
  final pulumi.Input<bool> enabled;
  /// Configuration block for the launch template that the fast-launch enabled Windows AMI uses when it launches Windows instances to create pre-provisioned snapshots. Detailed below.
  final pulumi.Input<DistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate>? launchTemplate;
  /// The maximum number of parallel instances that are launched for creating resources.
  final pulumi.Input<int>? maxParallelLaunches;
  /// Configuration block for managing the number of snapshots that are created from pre-provisioned instances for the Windows AMI when faster launching is enabled. Detailed below.
  final pulumi.Input<DistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration>? snapshotConfiguration;

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
      'launchTemplate': ?pulumi.Input.mapOptionalInputValue<DistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate, Map<String, dynamic>>(launchTemplate, (value) => value.toMap()),
      'maxParallelLaunches': ?maxParallelLaunches,
      'snapshotConfiguration': ?pulumi.Input.mapOptionalInputValue<DistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration, Map<String, dynamic>>(snapshotConfiguration, (value) => value.toMap()),
    };
  }

  factory DistributionConfigurationDistributionFastLaunchConfiguration.fromMap(Map<String, dynamic> map) {
    return DistributionConfigurationDistributionFastLaunchConfiguration(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      launchTemplate: (() { final guardedValue = map['launchTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxParallelLaunches: (() { final guardedValue = map['maxParallelLaunches']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      snapshotConfiguration: (() { final guardedValue = map['snapshotConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

