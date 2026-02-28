// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_inventory_filter.dart';
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource.dart';

class V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroup {
  /// List of inventory filters for the resource group.
  /// The resources in this resource group are applied to the target VM if it
  /// satisfies at least one of the following inventory filters.
  /// For example, to apply this resource group to VMs running either `RHEL` or
  /// `CentOS` operating systems, specify 2 items for the list with following
  /// values:
  /// inventory_filters[0].os_short_name='rhel' and
  /// inventory_filters[1].os_short_name='centos'
  /// If the list is empty, this resource group will be applied to the target
  /// VM unconditionally.
  /// Structure is documented below.
  final List<
          V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupInventoryFilter>?
      inventoryFilters;

  /// Required. List of resources configured for this resource group.
  /// The resources are executed in the exact order specified here.
  /// Structure is documented below.
  final List<
          V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResource>
      resources;

  /// Creates a new [V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroup].
  /// [inventoryFilters] List of inventory filters for the resource group.
  /// [resources] Required. List of resources configured for this resource group.
  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroup({
    this.inventoryFilters,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inventoryFiltersValue = inventoryFilters;
    if (inventoryFiltersValue != null) {
      map['inventoryFilters'] = pulumi.Input.encodeList<
          V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupInventoryFilter,
          Map<String,
              dynamic>>(inventoryFiltersValue, (value) => value.toMap());
    }
    map['resources'] = pulumi.Input.encodeList<
        V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResource,
        Map<String, dynamic>>(resources, (value) => value.toMap());
    return map;
  }

  factory V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroup.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroup(
      inventoryFilters: map['inventoryFilters'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupInventoryFilter>(
              map['inventoryFilters'],
              (value) =>
                  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupInventoryFilter
                      .fromMap((value as Map).cast<String, dynamic>())),
      resources: pulumi.Input.decodeList<
              V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResource>(
          map['resources'],
          (value) =>
              V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResource
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
