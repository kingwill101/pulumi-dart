// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_cost_allocation_resource_response.dart';
import 'target_cost_allocation_resource_response.dart';

/// Resource details of the cost allocation rule
class CostAllocationRuleDetailsResponse {
  /// Source resources for cost allocation. At this time, this list can contain no more than one element.
  final List<SourceCostAllocationResourceResponse>? sourceResources;
  /// Target resources for cost allocation. At this time, this list can contain no more than one element.
  final List<TargetCostAllocationResourceResponse>? targetResources;

  /// Creates a new [CostAllocationRuleDetailsResponse].
  /// [sourceResources] Source resources for cost allocation. At this time, this list can contain no more than one element.
  /// [targetResources] Target resources for cost allocation. At this time, this list can contain no more than one element.
  CostAllocationRuleDetailsResponse({
    this.sourceResources,
    this.targetResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceResources': ?sourceResources == null ? null : pulumi.Input.encodeList<SourceCostAllocationResourceResponse, Map<String, dynamic>>(sourceResources!, (value) => value.toMap()),
      'targetResources': ?targetResources == null ? null : pulumi.Input.encodeList<TargetCostAllocationResourceResponse, Map<String, dynamic>>(targetResources!, (value) => value.toMap()),
    };
  }

  factory CostAllocationRuleDetailsResponse.fromMap(Map<String, dynamic> map) {
    return CostAllocationRuleDetailsResponse(
      sourceResources: map['sourceResources'] == null ? null : pulumi.Input.decodeList<SourceCostAllocationResourceResponse>(map['sourceResources'], (value) => SourceCostAllocationResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      targetResources: map['targetResources'] == null ? null : pulumi.Input.decodeList<TargetCostAllocationResourceResponse>(map['targetResources'], (value) => TargetCostAllocationResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

