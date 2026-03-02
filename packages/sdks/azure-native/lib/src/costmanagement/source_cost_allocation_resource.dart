// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Source resources for cost allocation
class SourceCostAllocationResource {
  /// If resource type is dimension, this must be either ResourceGroupName or SubscriptionId. If resource type is tag, this must be a valid Azure tag
  final pulumi.Input<String> name;
  /// Type of resources contained in this cost allocation rule
  final pulumi.Input<String> resourceType;
  /// Source Resources for cost allocation. This list cannot contain more than 25 values.
  final pulumi.Input<List<String>> values;

  /// Creates a new [SourceCostAllocationResource].
  /// [name] If resource type is dimension, this must be either ResourceGroupName or SubscriptionId. If resource type is tag, this must be a valid Azure tag
  /// [resourceType] Type of resources contained in this cost allocation rule
  /// [values] Source Resources for cost allocation. This list cannot contain more than 25 values.
  SourceCostAllocationResource({
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

  factory SourceCostAllocationResource.fromMap(Map<String, dynamic> map) {
    return SourceCostAllocationResource(
      name: (map['name'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

