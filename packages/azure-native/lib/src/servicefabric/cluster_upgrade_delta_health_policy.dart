// ignore_for_file: unused_element, unnecessary_cast


/// Describes the delta health policies for the cluster upgrade.
class ClusterUpgradeDeltaHealthPolicy {
  /// The maximum allowed percentage of applications health degradation allowed during cluster upgrades.
  /// The delta is measured between the state of the applications at the beginning of upgrade and the state of the applications at the time of the health evaluation.
  /// The check is performed after every upgrade domain upgrade completion to make sure the global state of the cluster is within tolerated limits. System services are not included in this.
  /// NOTE: This value will overwrite the value specified in properties.UpgradeDescription.HealthPolicy.MaxPercentUnhealthyApplications
  final int? maxPercentDeltaUnhealthyApplications;
  /// The maximum allowed percentage of nodes health degradation allowed during cluster upgrades.
  /// The delta is measured between the state of the nodes at the beginning of upgrade and the state of the nodes at the time of the health evaluation.
  /// The check is performed after every upgrade domain upgrade completion to make sure the global state of the cluster is within tolerated limits.
  final int maxPercentDeltaUnhealthyNodes;
  /// The maximum allowed percentage of upgrade domain nodes health degradation allowed during cluster upgrades.
  /// The delta is measured between the state of the upgrade domain nodes at the beginning of upgrade and the state of the upgrade domain nodes at the time of the health evaluation.
  /// The check is performed after every upgrade domain upgrade completion for all completed upgrade domains to make sure the state of the upgrade domains is within tolerated limits.
  final int? maxPercentUpgradeDomainDeltaUnhealthyNodes;

  /// Creates a new [ClusterUpgradeDeltaHealthPolicy].
  /// [maxPercentDeltaUnhealthyApplications] The maximum allowed percentage of applications health degradation allowed during cluster upgrades.
  /// [maxPercentDeltaUnhealthyNodes] The maximum allowed percentage of nodes health degradation allowed during cluster upgrades.
  /// [maxPercentUpgradeDomainDeltaUnhealthyNodes] The maximum allowed percentage of upgrade domain nodes health degradation allowed during cluster upgrades.
  ClusterUpgradeDeltaHealthPolicy({
    this.maxPercentDeltaUnhealthyApplications,
    required this.maxPercentDeltaUnhealthyNodes,
    this.maxPercentUpgradeDomainDeltaUnhealthyNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPercentDeltaUnhealthyApplications': ?maxPercentDeltaUnhealthyApplications,
      'maxPercentDeltaUnhealthyNodes': maxPercentDeltaUnhealthyNodes,
      'maxPercentUpgradeDomainDeltaUnhealthyNodes': ?maxPercentUpgradeDomainDeltaUnhealthyNodes,
    };
  }

  factory ClusterUpgradeDeltaHealthPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeDeltaHealthPolicy(
      maxPercentDeltaUnhealthyApplications: map['maxPercentDeltaUnhealthyApplications'] == null ? null : map['maxPercentDeltaUnhealthyApplications'] as int,
      maxPercentDeltaUnhealthyNodes: map['maxPercentDeltaUnhealthyNodes'] as int,
      maxPercentUpgradeDomainDeltaUnhealthyNodes: map['maxPercentUpgradeDomainDeltaUnhealthyNodes'] == null ? null : map['maxPercentUpgradeDomainDeltaUnhealthyNodes'] as int,
    );
  }
}

