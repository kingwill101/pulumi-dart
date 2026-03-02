// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration parameters used while performing a rolling upgrade.
class RollingUpgradePolicy {
  /// Allow VMSS to ignore AZ boundaries when constructing upgrade batches. Take into consideration the Update Domain and maxBatchInstancePercent to determine the batch size. If this field is not set, Azure Azure Batch will not set its default value. The value of enableCrossZoneUpgrade on the created VirtualMachineScaleSet will be decided by the default configurations on VirtualMachineScaleSet. This field is able to be set to true or false only when using NodePlacementConfiguration as Zonal.
  final pulumi.Input<bool>? enableCrossZoneUpgrade;
  /// The maximum percent of total virtual machine instances that will be upgraded simultaneously by the rolling upgrade in one batch. As this is a maximum, unhealthy instances in previous or future batches can cause the percentage of instances in a batch to decrease to ensure higher reliability. The value of this field should be between 5 and 100, inclusive. If both maxBatchInstancePercent and maxUnhealthyInstancePercent are assigned with value, the value of maxBatchInstancePercent should not be more than maxUnhealthyInstancePercent.
  final pulumi.Input<int>? maxBatchInstancePercent;
  /// The maximum percentage of the total virtual machine instances in the scale set that can be simultaneously unhealthy, either as a result of being upgraded, or by being found in an unhealthy state by the virtual machine health checks before the rolling upgrade aborts. This constraint will be checked prior to starting any batch. The value of this field should be between 5 and 100, inclusive. If both maxBatchInstancePercent and maxUnhealthyInstancePercent are assigned with value, the value of maxBatchInstancePercent should not be more than maxUnhealthyInstancePercent.
  final pulumi.Input<int>? maxUnhealthyInstancePercent;
  /// The maximum percentage of upgraded virtual machine instances that can be found to be in an unhealthy state. This check will happen after each batch is upgraded. If this percentage is ever exceeded, the rolling update aborts. The value of this field should be between 0 and 100, inclusive.
  final pulumi.Input<int>? maxUnhealthyUpgradedInstancePercent;
  /// The wait time between completing the update for all virtual machines in one batch and starting the next batch. The time duration should be specified in ISO 8601 format.
  final pulumi.Input<String>? pauseTimeBetweenBatches;
  /// Upgrade all unhealthy instances in a scale set before any healthy instances.
  final pulumi.Input<bool>? prioritizeUnhealthyInstances;
  /// Rollback failed instances to previous model if the Rolling Upgrade policy is violated.
  final pulumi.Input<bool>? rollbackFailedInstancesOnPolicyBreach;

  /// Creates a new [RollingUpgradePolicy].
  /// [enableCrossZoneUpgrade] Allow VMSS to ignore AZ boundaries when constructing upgrade batches. Take into consideration the Update Domain and maxBatchInstancePercent to determine the batch size. If this field is not set, Azure Azure Batch will not set its default value. The value of enableCrossZoneUpgrade on the created VirtualMachineScaleSet will be decided by the default configurations on VirtualMachineScaleSet. This field is able to be set to true or false only when using NodePlacementConfiguration as Zonal.
  /// [maxBatchInstancePercent] The maximum percent of total virtual machine instances that will be upgraded simultaneously by the rolling upgrade in one batch. As this is a maximum, unhealthy instances in previous or future batches can cause the percentage of instances in a batch to decrease to ensure higher reliability. The value of this field should be between 5 and 100, inclusive. If both maxBatchInstancePercent and maxUnhealthyInstancePercent are assigned with value, the value of maxBatchInstancePercent should not be more than maxUnhealthyInstancePercent.
  /// [maxUnhealthyInstancePercent] The maximum percentage of the total virtual machine instances in the scale set that can be simultaneously unhealthy, either as a result of being upgraded, or by being found in an unhealthy state by the virtual machine health checks before the rolling upgrade aborts. This constraint will be checked prior to starting any batch. The value of this field should be between 5 and 100, inclusive. If both maxBatchInstancePercent and maxUnhealthyInstancePercent are assigned with value, the value of maxBatchInstancePercent should not be more than maxUnhealthyInstancePercent.
  /// [maxUnhealthyUpgradedInstancePercent] The maximum percentage of upgraded virtual machine instances that can be found to be in an unhealthy state. This check will happen after each batch is upgraded. If this percentage is ever exceeded, the rolling update aborts. The value of this field should be between 0 and 100, inclusive.
  /// [pauseTimeBetweenBatches] The wait time between completing the update for all virtual machines in one batch and starting the next batch. The time duration should be specified in ISO 8601 format.
  /// [prioritizeUnhealthyInstances] Upgrade all unhealthy instances in a scale set before any healthy instances.
  /// [rollbackFailedInstancesOnPolicyBreach] Rollback failed instances to previous model if the Rolling Upgrade policy is violated.
  RollingUpgradePolicy({
    this.enableCrossZoneUpgrade,
    this.maxBatchInstancePercent,
    this.maxUnhealthyInstancePercent,
    this.maxUnhealthyUpgradedInstancePercent,
    this.pauseTimeBetweenBatches,
    this.prioritizeUnhealthyInstances,
    this.rollbackFailedInstancesOnPolicyBreach,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCrossZoneUpgrade': ?enableCrossZoneUpgrade,
      'maxBatchInstancePercent': ?maxBatchInstancePercent,
      'maxUnhealthyInstancePercent': ?maxUnhealthyInstancePercent,
      'maxUnhealthyUpgradedInstancePercent': ?maxUnhealthyUpgradedInstancePercent,
      'pauseTimeBetweenBatches': ?pauseTimeBetweenBatches,
      'prioritizeUnhealthyInstances': ?prioritizeUnhealthyInstances,
      'rollbackFailedInstancesOnPolicyBreach': ?rollbackFailedInstancesOnPolicyBreach,
    };
  }

  factory RollingUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return RollingUpgradePolicy(
      enableCrossZoneUpgrade: map['enableCrossZoneUpgrade'] == null ? null : (map['enableCrossZoneUpgrade'] as bool).input(),
      maxBatchInstancePercent: map['maxBatchInstancePercent'] == null ? null : (map['maxBatchInstancePercent'] as int).input(),
      maxUnhealthyInstancePercent: map['maxUnhealthyInstancePercent'] == null ? null : (map['maxUnhealthyInstancePercent'] as int).input(),
      maxUnhealthyUpgradedInstancePercent: map['maxUnhealthyUpgradedInstancePercent'] == null ? null : (map['maxUnhealthyUpgradedInstancePercent'] as int).input(),
      pauseTimeBetweenBatches: map['pauseTimeBetweenBatches'] == null ? null : (map['pauseTimeBetweenBatches'] as String).input(),
      prioritizeUnhealthyInstances: map['prioritizeUnhealthyInstances'] == null ? null : (map['prioritizeUnhealthyInstances'] as bool).input(),
      rollbackFailedInstancesOnPolicyBreach: map['rollbackFailedInstancesOnPolicyBreach'] == null ? null : (map['rollbackFailedInstancesOnPolicyBreach'] as bool).input(),
    );
  }
}

