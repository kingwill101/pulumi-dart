// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'ospolicy_inventory_filter_response2.dart';
import 'ospolicy_osfilter_response.dart';
import 'ospolicy_resource_response2.dart';

/// Resource groups provide a mechanism to group OS policy resources. Resource groups enable OS policy authors to create a single OS policy to be applied to VMs running different operating Systems. When the OS policy is applied to a target VM, the appropriate resource group within the OS policy is selected based on the `OSFilter` specified within the resource group.
class OSPolicyResourceGroupResponse2 {
  /// List of inventory filters for the resource group. The resources in this resource group are applied to the target VM if it satisfies at least one of the following inventory filters. For example, to apply this resource group to VMs running either `RHEL` or `CentOS` operating systems, specify 2 items for the list with following values: inventory_filters[0].os_short_name='rhel' and inventory_filters[1].os_short_name='centos' If the list is empty, this resource group will be applied to the target VM unconditionally.
  final List<OSPolicyInventoryFilterResponse2> inventoryFilters;

  /// Deprecated. Use the `inventory_filters` field instead. Used to specify the OS filter for a resource group
  final OSPolicyOSFilterResponse osFilter;

  /// List of resources configured for this resource group. The resources are executed in the exact order specified here.
  final List<OSPolicyResourceResponse2> resources;

  OSPolicyResourceGroupResponse2({
    required this.inventoryFilters,
    required this.osFilter,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inventoryFilters'] = Input.encodeList<OSPolicyInventoryFilterResponse2,
        Map<String, dynamic>>(inventoryFilters, (value) => value.toMap());
    map['osFilter'] = osFilter.toMap();
    map['resources'] =
        Input.encodeList<OSPolicyResourceResponse2, Map<String, dynamic>>(
            resources, (value) => value.toMap());
    return map;
  }

  factory OSPolicyResourceGroupResponse2.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceGroupResponse2(
      inventoryFilters: Input.decodeList<OSPolicyInventoryFilterResponse2>(
          map['inventoryFilters'],
          (value) => OSPolicyInventoryFilterResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      osFilter: OSPolicyOSFilterResponse.fromMap(
          (map['osFilter'] as Map).cast<String, dynamic>()),
      resources: Input.decodeList<OSPolicyResourceResponse2>(
          map['resources'],
          (value) => OSPolicyResourceResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
