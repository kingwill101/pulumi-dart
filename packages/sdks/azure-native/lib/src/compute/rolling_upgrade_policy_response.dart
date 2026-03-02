// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration parameters used while performing a rolling upgrade.
class RollingUpgradePolicyResponse {
  /// Allow VMSS to ignore AZ boundaries when constructing upgrade batches. Take into consideration the Update Domain and maxBatchInstancePercent to determine the batch size.
  final pulumi.Input<bool>? enableCrossZoneUpgrade;
  /// The maximum percent of total virtual machine instances that will be upgraded simultaneously by the rolling upgrade in one batch. As this is a maximum, unhealthy instances in previous or future batches can cause the percentage of instances in a batch to decrease to ensure higher reliability. The default value for this parameter is 20%.
  final pulumi.Input<int>? maxBatchInstancePercent;
  /// Create new virtual machines to upgrade the scale set, rather than updating the existing virtual machines. Existing virtual machines will be deleted once the new virtual machines are created for each batch.
  final pulumi.Input<bool>? maxSurge;
  /// The maximum percentage of the total virtual machine instances in the scale set that can be simultaneously unhealthy, either as a result of being upgraded, or by being found in an unhealthy state by the virtual machine health checks before the rolling upgrade aborts. This constraint will be checked prior to starting any batch. The default value for this parameter is 20%.
  final pulumi.Input<int>? maxUnhealthyInstancePercent;
  /// The maximum percentage of upgraded virtual machine instances that can be found to be in an unhealthy state. This check will happen after each batch is upgraded. If this percentage is ever exceeded, the rolling update aborts. The default value for this parameter is 20%.
  final pulumi.Input<int>? maxUnhealthyUpgradedInstancePercent;
  /// The wait time between completing the update for all virtual machines in one batch and starting the next batch. The time duration should be specified in ISO 8601 format. The default value is 0 seconds (PT0S).
  final pulumi.Input<String>? pauseTimeBetweenBatches;
  /// Upgrade all unhealthy instances in a scale set before any healthy instances.
  final pulumi.Input<bool>? prioritizeUnhealthyInstances;
  /// Rollback failed instances to previous model if the Rolling Upgrade policy is violated.
  final pulumi.Input<bool>? rollbackFailedInstancesOnPolicyBreach;

  /// Creates a new [RollingUpgradePolicyResponse].
  /// [enableCrossZoneUpgrade] Allow VMSS to ignore AZ boundaries when constructing upgrade batches. Take into consideration the Update Domain and maxBatchInstancePercent to determine the batch size.
  /// [maxBatchInstancePercent] The maximum percent of total virtual machine instances that will be upgraded simultaneously by the rolling upgrade in one batch. As this is a maximum, unhealthy instances in previous or future batches can cause the percentage of instances in a batch to decrease to ensure higher reliability. The default value for this parameter is 20%.
  /// [maxSurge] Create new virtual machines to upgrade the scale set, rather than updating the existing virtual machines. Existing virtual machines will be deleted once the new virtual machines are created for each batch.
  /// [maxUnhealthyInstancePercent] The maximum percentage of the total virtual machine instances in the scale set that can be simultaneously unhealthy, either as a result of being upgraded, or by being found in an unhealthy state by the virtual machine health checks before the rolling upgrade aborts. This constraint will be checked prior to starting any batch. The default value for this parameter is 20%.
  /// [maxUnhealthyUpgradedInstancePercent] The maximum percentage of upgraded virtual machine instances that can be found to be in an unhealthy state. This check will happen after each batch is upgraded. If this percentage is ever exceeded, the rolling update aborts. The default value for this parameter is 20%.
  /// [pauseTimeBetweenBatches] The wait time between completing the update for all virtual machines in one batch and starting the next batch. The time duration should be specified in ISO 8601 format. The default value is 0 seconds (PT0S).
  /// [prioritizeUnhealthyInstances] Upgrade all unhealthy instances in a scale set before any healthy instances.
  /// [rollbackFailedInstancesOnPolicyBreach] Rollback failed instances to previous model if the Rolling Upgrade policy is violated.
  RollingUpgradePolicyResponse({
    this.enableCrossZoneUpgrade,
    this.maxBatchInstancePercent,
    this.maxSurge,
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
      'maxSurge': ?maxSurge,
      'maxUnhealthyInstancePercent': ?maxUnhealthyInstancePercent,
      'maxUnhealthyUpgradedInstancePercent': ?maxUnhealthyUpgradedInstancePercent,
      'pauseTimeBetweenBatches': ?pauseTimeBetweenBatches,
      'prioritizeUnhealthyInstances': ?prioritizeUnhealthyInstances,
      'rollbackFailedInstancesOnPolicyBreach': ?rollbackFailedInstancesOnPolicyBreach,
    };
  }

  factory RollingUpgradePolicyResponse.fromMap(Map<String, dynamic> map) {
    return RollingUpgradePolicyResponse(
      enableCrossZoneUpgrade: map['enableCrossZoneUpgrade'] == null ? null : (map['enableCrossZoneUpgrade'] as bool).input(),
      maxBatchInstancePercent: map['maxBatchInstancePercent'] == null ? null : (map['maxBatchInstancePercent'] as int).input(),
      maxSurge: map['maxSurge'] == null ? null : (map['maxSurge'] as bool).input(),
      maxUnhealthyInstancePercent: map['maxUnhealthyInstancePercent'] == null ? null : (map['maxUnhealthyInstancePercent'] as int).input(),
      maxUnhealthyUpgradedInstancePercent: map['maxUnhealthyUpgradedInstancePercent'] == null ? null : (map['maxUnhealthyUpgradedInstancePercent'] as int).input(),
      pauseTimeBetweenBatches: map['pauseTimeBetweenBatches'] == null ? null : (map['pauseTimeBetweenBatches'] as String).input(),
      prioritizeUnhealthyInstances: map['prioritizeUnhealthyInstances'] == null ? null : (map['prioritizeUnhealthyInstances'] as bool).input(),
      rollbackFailedInstancesOnPolicyBreach: map['rollbackFailedInstancesOnPolicyBreach'] == null ? null : (map['rollbackFailedInstancesOnPolicyBreach'] as bool).input(),
    );
  }
}

