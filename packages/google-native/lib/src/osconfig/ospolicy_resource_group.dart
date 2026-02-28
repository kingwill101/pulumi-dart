// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_inventory_filter.dart';
import 'ospolicy_resource.dart';

/// Resource groups provide a mechanism to group OS policy resources. Resource groups enable OS policy authors to create a single OS policy to be applied to VMs running different operating Systems. When the OS policy is applied to a target VM, the appropriate resource group within the OS policy is selected based on the `OSFilter` specified within the resource group.
class OSPolicyResourceGroup {
  /// List of inventory filters for the resource group. The resources in this resource group are applied to the target VM if it satisfies at least one of the following inventory filters. For example, to apply this resource group to VMs running either `RHEL` or `CentOS` operating systems, specify 2 items for the list with following values: inventory_filters[0].os_short_name='rhel' and inventory_filters[1].os_short_name='centos' If the list is empty, this resource group will be applied to the target VM unconditionally.
  final List<OSPolicyInventoryFilter>? inventoryFilters;

  /// List of resources configured for this resource group. The resources are executed in the exact order specified here.
  final List<OSPolicyResource> resources;

  /// Creates a new [OSPolicyResourceGroup].
  /// [inventoryFilters] List of inventory filters for the resource group. The resources in this resource group are applied to the target VM if it satisfies at least one of the following inventory filters. For example, to apply this resource group to VMs running either `RHEL` or `CentOS` operating systems, specify 2 items for the list with following values: inventory_filters[0].os_short_name='rhel' and inventory_filters[1].os_short_name='centos' If the list is empty, this resource group will be applied to the target VM unconditionally.
  /// [resources] List of resources configured for this resource group. The resources are executed in the exact order specified here.
  OSPolicyResourceGroup({
    this.inventoryFilters,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inventoryFiltersValue = inventoryFilters;
    if (inventoryFiltersValue != null) {
      map['inventoryFilters'] = pulumi.Input.encodeList<OSPolicyInventoryFilter,
              Map<String, dynamic>>(
          inventoryFiltersValue, (value) => value.toMap());
    }
    map['resources'] =
        pulumi.Input.encodeList<OSPolicyResource, Map<String, dynamic>>(
            resources, (value) => value.toMap());
    return map;
  }

  factory OSPolicyResourceGroup.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceGroup(
      inventoryFilters: map['inventoryFilters'] == null
          ? null
          : pulumi.Input.decodeList<OSPolicyInventoryFilter>(
              map['inventoryFilters'],
              (value) => OSPolicyInventoryFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resources: pulumi.Input.decodeList<OSPolicyResource>(
          map['resources'],
          (value) =>
              OSPolicyResource.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
