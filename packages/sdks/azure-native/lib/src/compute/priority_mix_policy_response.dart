// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the target splits for Spot and Regular priority VMs within a scale set with flexible orchestration mode. With this property the customer is able to specify the base number of regular priority VMs created as the VMSS flex instance scales out and the split between Spot and Regular priority VMs after this base target has been reached.
class PriorityMixPolicyResponse {
  /// The base number of regular priority VMs that will be created in this scale set as it scales out.
  final pulumi.Input<int>? baseRegularPriorityCount;
  /// The percentage of VM instances, after the base regular priority count has been reached, that are expected to use regular priority.
  final pulumi.Input<int>? regularPriorityPercentageAboveBase;

  /// Creates a new [PriorityMixPolicyResponse].
  /// [baseRegularPriorityCount] The base number of regular priority VMs that will be created in this scale set as it scales out.
  /// [regularPriorityPercentageAboveBase] The percentage of VM instances, after the base regular priority count has been reached, that are expected to use regular priority.
  const PriorityMixPolicyResponse({
    this.baseRegularPriorityCount,
    this.regularPriorityPercentageAboveBase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseRegularPriorityCount': ?baseRegularPriorityCount,
      'regularPriorityPercentageAboveBase': ?regularPriorityPercentageAboveBase,
    };
  }

  factory PriorityMixPolicyResponse.fromMap(Map<String, dynamic> map) {
    return PriorityMixPolicyResponse(
      baseRegularPriorityCount: (() { final guardedValue = map['baseRegularPriorityCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      regularPriorityPercentageAboveBase: (() { final guardedValue = map['regularPriorityPercentageAboveBase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
