// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_allocation_proportion.dart';

/// Target resources for cost allocation.
class TargetCostAllocationResource {
  /// If resource type is dimension, this must be either ResourceGroupName or SubscriptionId. If resource type is tag, this must be a valid Azure tag
  final String name;
  /// Method of cost allocation for the rule
  final String policyType;
  /// Type of resources contained in this cost allocation rule
  final String resourceType;
  /// Target resources for cost allocation. This list cannot contain more than 25 values.
  final List<CostAllocationProportion> values;

  /// Creates a new [TargetCostAllocationResource].
  /// [name] If resource type is dimension, this must be either ResourceGroupName or SubscriptionId. If resource type is tag, this must be a valid Azure tag
  /// [policyType] Method of cost allocation for the rule
  /// [resourceType] Type of resources contained in this cost allocation rule
  /// [values] Target resources for cost allocation. This list cannot contain more than 25 values.
  TargetCostAllocationResource({
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
      'values': pulumi.Input.encodeList<CostAllocationProportion, Map<String, dynamic>>(values, (value) => value.toMap()),
    };
  }

  factory TargetCostAllocationResource.fromMap(Map<String, dynamic> map) {
    return TargetCostAllocationResource(
      name: map['name'] as String,
      policyType: map['policyType'] as String,
      resourceType: map['resourceType'] as String,
      values: pulumi.Input.decodeList<CostAllocationProportion>(map['values'], (value) => CostAllocationProportion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

