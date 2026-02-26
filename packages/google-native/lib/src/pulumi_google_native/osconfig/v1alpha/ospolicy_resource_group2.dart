// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'ospolicy_inventory_filter2.dart';
import 'ospolicy_osfilter.dart';
import 'ospolicy_resource2.dart';

/// Resource groups provide a mechanism to group OS policy resources. Resource groups enable OS policy authors to create a single OS policy to be applied to VMs running different operating Systems. When the OS policy is applied to a target VM, the appropriate resource group within the OS policy is selected based on the `OSFilter` specified within the resource group.
class OSPolicyResourceGroup2 {
  /// List of inventory filters for the resource group. The resources in this resource group are applied to the target VM if it satisfies at least one of the following inventory filters. For example, to apply this resource group to VMs running either `RHEL` or `CentOS` operating systems, specify 2 items for the list with following values: inventory_filters[0].os_short_name='rhel' and inventory_filters[1].os_short_name='centos' If the list is empty, this resource group will be applied to the target VM unconditionally.
  final List<OSPolicyInventoryFilter2>? inventoryFilters;

  /// Deprecated. Use the `inventory_filters` field instead. Used to specify the OS filter for a resource group
  final OSPolicyOSFilter? osFilter;

  /// List of resources configured for this resource group. The resources are executed in the exact order specified here.
  final List<OSPolicyResource2> resources;

  OSPolicyResourceGroup2({
    this.inventoryFilters,
    this.osFilter,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inventoryFiltersValue = inventoryFilters;
    if (inventoryFiltersValue != null) {
      map['inventoryFilters'] =
          Input.encodeList<OSPolicyInventoryFilter2, Map<String, dynamic>>(
              inventoryFiltersValue, (value) => value.toMap());
    }
    final osFilterValue = osFilter;
    if (osFilterValue != null) {
      map['osFilter'] = osFilterValue.toMap();
    }
    map['resources'] =
        Input.encodeList<OSPolicyResource2, Map<String, dynamic>>(
            resources, (value) => value.toMap());
    return map;
  }

  factory OSPolicyResourceGroup2.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceGroup2(
      inventoryFilters: map['inventoryFilters'] == null
          ? null
          : Input.decodeList<OSPolicyInventoryFilter2>(
              map['inventoryFilters'],
              (value) => OSPolicyInventoryFilter2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      osFilter: map['osFilter'] == null
          ? null
          : OSPolicyOSFilter.fromMap(
              (map['osFilter'] as Map).cast<String, dynamic>()),
      resources: Input.decodeList<OSPolicyResource2>(
          map['resources'],
          (value) => OSPolicyResource2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
