// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../os_policy_assignment_os_policy_resource_group_inventory_filter/os_policy_assignment_os_policy_resource_group_inventory_filter.dart';
import '../os_policy_assignment_os_policy_resource_group_resource/os_policy_assignment_os_policy_resource_group_resource.dart';

class OsPolicyAssignmentOsPolicyResourceGroup {
  /// List of inventory filters for the resource
  /// group. The resources in this resource group are applied to the target VM if
  /// it satisfies at least one of the following inventory filters. For example,
  /// to apply this resource group to VMs running either `RHEL` or `CentOS`
  /// operating systems, specify 2 items for the list with following values:
  /// inventory_filters[0].os_short_name='rhel' and
  /// inventory_filters[1].os_short_name='centos' If the list is empty, this
  /// resource group will be applied to the target VM unconditionally. Structure
  /// is documented below.
  final List<OsPolicyAssignmentOsPolicyResourceGroupInventoryFilter>?
      inventoryFilters;

  /// List of resources configured for this resource
  /// group. The resources are executed in the exact order specified here.
  /// Structure is documented below.
  final List<OsPolicyAssignmentOsPolicyResourceGroupResource> resources;

  OsPolicyAssignmentOsPolicyResourceGroup({
    this.inventoryFilters,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inventoryFiltersValue = inventoryFilters;
    if (inventoryFiltersValue != null) {
      map['inventoryFilters'] = Input.encodeList<
              OsPolicyAssignmentOsPolicyResourceGroupInventoryFilter,
              Map<String, dynamic>>(
          inventoryFiltersValue, (value) => value.toMap());
    }
    map['resources'] = Input.encodeList<
        OsPolicyAssignmentOsPolicyResourceGroupResource,
        Map<String, dynamic>>(resources, (value) => value.toMap());
    return map;
  }

  factory OsPolicyAssignmentOsPolicyResourceGroup.fromMap(
      Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroup(
      inventoryFilters: map['inventoryFilters'] == null
          ? null
          : Input.decodeList<
                  OsPolicyAssignmentOsPolicyResourceGroupInventoryFilter>(
              map['inventoryFilters'],
              (value) => OsPolicyAssignmentOsPolicyResourceGroupInventoryFilter
                  .fromMap((value as Map).cast<String, dynamic>())),
      resources:
          Input.decodeList<OsPolicyAssignmentOsPolicyResourceGroupResource>(
              map['resources'],
              (value) =>
                  OsPolicyAssignmentOsPolicyResourceGroupResource.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
