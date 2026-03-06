// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_cost_allocation_resource_response.dart';
import 'target_cost_allocation_resource_response.dart';

/// Resource details of the cost allocation rule
class CostAllocationRuleDetailsResponse {
  /// Source resources for cost allocation. At this time, this list can contain no more than one element.
  final pulumi.Input<List<SourceCostAllocationResourceResponse>>? sourceResources;
  /// Target resources for cost allocation. At this time, this list can contain no more than one element.
  final pulumi.Input<List<TargetCostAllocationResourceResponse>>? targetResources;

  /// Creates a new [CostAllocationRuleDetailsResponse].
  /// [sourceResources] Source resources for cost allocation. At this time, this list can contain no more than one element.
  /// [targetResources] Target resources for cost allocation. At this time, this list can contain no more than one element.
  const CostAllocationRuleDetailsResponse({
    this.sourceResources,
    this.targetResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceResources': ?pulumi.Input.mapOptionalInputValue<List<SourceCostAllocationResourceResponse>, List<Map<String, dynamic>>>(sourceResources, (value) => pulumi.Input.encodeList<SourceCostAllocationResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetResources': ?pulumi.Input.mapOptionalInputValue<List<TargetCostAllocationResourceResponse>, List<Map<String, dynamic>>>(targetResources, (value) => pulumi.Input.encodeList<TargetCostAllocationResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CostAllocationRuleDetailsResponse.fromMap(Map<String, dynamic> map) {
    return CostAllocationRuleDetailsResponse(
      sourceResources: (() { final guardedValue = map['sourceResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SourceCostAllocationResourceResponse>(guardedValue, (value) => SourceCostAllocationResourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetResources: (() { final guardedValue = map['targetResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TargetCostAllocationResourceResponse>(guardedValue, (value) => TargetCostAllocationResourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

