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
  const CostAllocationRuleDetails({
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
      sourceResources: (() { final guardedValue = map['sourceResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SourceCostAllocationResource>(guardedValue, (value) => SourceCostAllocationResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetResources: (() { final guardedValue = map['targetResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TargetCostAllocationResource>(guardedValue, (value) => TargetCostAllocationResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

