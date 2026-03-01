// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the target splits for Spot and Regular priority VMs within a scale set with flexible orchestration mode. With this property the customer is able to specify the base number of regular priority VMs created as the VMSS flex instance scales out and the split between Spot and Regular priority VMs after this base target has been reached.
class PriorityMixPolicy {
  /// The base number of regular priority VMs that will be created in this scale set as it scales out.
  final int? baseRegularPriorityCount;
  /// The percentage of VM instances, after the base regular priority count has been reached, that are expected to use regular priority.
  final int? regularPriorityPercentageAboveBase;

  /// Creates a new [PriorityMixPolicy].
  /// [baseRegularPriorityCount] The base number of regular priority VMs that will be created in this scale set as it scales out.
  /// [regularPriorityPercentageAboveBase] The percentage of VM instances, after the base regular priority count has been reached, that are expected to use regular priority.
  PriorityMixPolicy({
    this.baseRegularPriorityCount,
    this.regularPriorityPercentageAboveBase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseRegularPriorityCount': ?baseRegularPriorityCount,
      'regularPriorityPercentageAboveBase': ?regularPriorityPercentageAboveBase,
    };
  }

  factory PriorityMixPolicy.fromMap(Map<String, dynamic> map) {
    return PriorityMixPolicy(
      baseRegularPriorityCount: map['baseRegularPriorityCount'] == null ? null : map['baseRegularPriorityCount'] as int,
      regularPriorityPercentageAboveBase: map['regularPriorityPercentageAboveBase'] == null ? null : map['regularPriorityPercentageAboveBase'] as int,
    );
  }
}

