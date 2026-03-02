// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_cost_allocation_resource.dart';
import 'target_cost_allocation_resource.dart';

/// Resource details of the cost allocation rule
class CostAllocationRuleDetails {
  /// Source resources for cost allocation. At this time, this list can contain no more than one element.
  final pulumi.Input<List<SourceCostAllocationResource>>? sourceResources;
  /// Target resources for cost allocation. At this time, this list can contain no more than one element.
  final pulumi.Input<List<TargetCostAllocationResource>>? targetResources;

  /// Creates a new [CostAllocationRuleDetails].
  /// [sourceResources] Source resources for cost allocation. At this time, this list can contain no more than one element.
  /// [targetResources] Target resources for cost allocation. At this time, this list can contain no more than one element.
  CostAllocationRuleDetails({
    this.sourceResources,
    this.targetResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceResources': ?pulumi.Input.mapOptionalInputValue<List<SourceCostAllocationResource>, List<Map<String, dynamic>>>(sourceResources, (value) => pulumi.Input.encodeList<SourceCostAllocationResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetResources': ?pulumi.Input.mapOptionalInputValue<List<TargetCostAllocationResource>, List<Map<String, dynamic>>>(targetResources, (value) => pulumi.Input.encodeList<TargetCostAllocationResource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CostAllocationRuleDetails.fromMap(Map<String, dynamic> map) {
    return CostAllocationRuleDetails(
      sourceResources: map['sourceResources'] == null ? null : (pulumi.Input.decodeList<SourceCostAllocationResource>(map['sourceResources']!, (value) => SourceCostAllocationResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetResources: map['targetResources'] == null ? null : (pulumi.Input.decodeList<TargetCostAllocationResource>(map['targetResources']!, (value) => TargetCostAllocationResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

