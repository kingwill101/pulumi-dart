// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_allocation_proportion_response.dart';

/// Target resources for cost allocation.
class TargetCostAllocationResourceResponse {
  /// If resource type is dimension, this must be either ResourceGroupName or SubscriptionId. If resource type is tag, this must be a valid Azure tag
  final pulumi.Input<String> name;
  /// Method of cost allocation for the rule
  final pulumi.Input<String> policyType;
  /// Type of resources contained in this cost allocation rule
  final pulumi.Input<String> resourceType;
  /// Target resources for cost allocation. This list cannot contain more than 25 values.
  final pulumi.Input<List<CostAllocationProportionResponse>> values;

  /// Creates a new [TargetCostAllocationResourceResponse].
  /// [name] If resource type is dimension, this must be either ResourceGroupName or SubscriptionId. If resource type is tag, this must be a valid Azure tag
  /// [policyType] Method of cost allocation for the rule
  /// [resourceType] Type of resources contained in this cost allocation rule
  /// [values] Target resources for cost allocation. This list cannot contain more than 25 values.
  TargetCostAllocationResourceResponse({
    required this.name,
    required this.policyType,
    required this.resourceType,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'policyType': policyType,
      'resourceType': resourceType,
      'values': pulumi.Input.mapInputValue<List<CostAllocationProportionResponse>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<CostAllocationProportionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TargetCostAllocationResourceResponse.fromMap(Map<String, dynamic> map) {
    return TargetCostAllocationResourceResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      policyType: pulumi.Input.fromValue(map['policyType'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      values: pulumi.Input.fromValue(pulumi.Input.decodeList<CostAllocationProportionResponse>(map['values']!, (value) => CostAllocationProportionResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

