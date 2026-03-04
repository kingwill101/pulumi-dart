// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Target resources and allocation
class CostAllocationProportionResponse {
  /// Target resource for cost allocation
  final pulumi.Input<String> name;

  /// Percentage of source cost to allocate to this resource. This value can be specified to two decimal places and the total percentage of all resources in this rule must sum to 100.00.
  final pulumi.Input<double> percentage;

  /// Creates a new [CostAllocationProportionResponse].
  /// [name] Target resource for cost allocation
  /// [percentage] Percentage of source cost to allocate to this resource. This value can be specified to two decimal places and the total percentage of all resources in this rule must sum to 100.00.
  CostAllocationProportionResponse({
    required this.name,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'percentage': percentage};
  }

  factory CostAllocationProportionResponse.fromMap(Map<String, dynamic> map) {
    return CostAllocationProportionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      percentage: pulumi.Input.fromValue(map['percentage'] as double),
    );
  }
}
