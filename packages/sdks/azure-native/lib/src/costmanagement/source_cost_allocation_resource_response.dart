// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Source resources for cost allocation
class SourceCostAllocationResourceResponse {
  /// If resource type is dimension, this must be either ResourceGroupName or SubscriptionId. If resource type is tag, this must be a valid Azure tag
  final pulumi.Input<String> name;
  /// Type of resources contained in this cost allocation rule
  final pulumi.Input<String> resourceType;
  /// Source Resources for cost allocation. This list cannot contain more than 25 values.
  final pulumi.Input<List<String>> values;

  /// Creates a new [SourceCostAllocationResourceResponse].
  /// [name] If resource type is dimension, this must be either ResourceGroupName or SubscriptionId. If resource type is tag, this must be a valid Azure tag
  /// [resourceType] Type of resources contained in this cost allocation rule
  /// [values] Source Resources for cost allocation. This list cannot contain more than 25 values.
  const SourceCostAllocationResourceResponse({
    required this.name,
    required this.resourceType,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceType': resourceType,
      'values': values,
    };
  }

  factory SourceCostAllocationResourceResponse.fromMap(Map<String, dynamic> map) {
    return SourceCostAllocationResourceResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

