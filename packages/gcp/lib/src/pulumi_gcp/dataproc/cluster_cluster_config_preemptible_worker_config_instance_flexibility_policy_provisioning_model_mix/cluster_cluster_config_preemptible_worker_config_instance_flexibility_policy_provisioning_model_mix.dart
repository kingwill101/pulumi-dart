// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix {
  /// The base capacity that will always use Standard VMs to avoid risk of more preemption than the minimum capacity you need. Dataproc will create only standard VMs until it reaches standardCapacityBase, then it will start using standardCapacityPercentAboveBase to mix Spot with Standard VMs. eg. If 15 instances are requested and standardCapacityBase is 5, Dataproc will create 5 standard VMs and then start mixing spot and standard VMs for remaining 10 instances.
  final int? standardCapacityBase;

  /// The percentage of target capacity that should use Standard VM. The remaining percentage will use Spot VMs. The percentage applies only to the capacity above standardCapacityBase. eg. If 15 instances are requested and standardCapacityBase is 5 and standardCapacityPercentAboveBase is 30, Dataproc will create 5 standard VMs and then start mixing spot and standard VMs for remaining 10 instances. The mix will be 30% standard and 70% spot.
  /// - - -
  final int? standardCapacityPercentAboveBase;

  ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix({
    this.standardCapacityBase,
    this.standardCapacityPercentAboveBase,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final standardCapacityBaseValue = standardCapacityBase;
    if (standardCapacityBaseValue != null) {
      map['standardCapacityBase'] = standardCapacityBaseValue;
    }
    final standardCapacityPercentAboveBaseValue =
        standardCapacityPercentAboveBase;
    if (standardCapacityPercentAboveBaseValue != null) {
      map['standardCapacityPercentAboveBase'] =
          standardCapacityPercentAboveBaseValue;
    }
    return map;
  }

  factory ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix.fromMap(
      Map<String, dynamic> map) {
    return ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix(
      standardCapacityBase: map['standardCapacityBase'] == null
          ? null
          : map['standardCapacityBase'] as int,
      standardCapacityPercentAboveBase:
          map['standardCapacityPercentAboveBase'] == null
              ? null
              : map['standardCapacityPercentAboveBase'] as int,
    );
  }
}
