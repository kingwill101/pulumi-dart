// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_inventory_filter_response.dart';
import 'ospolicy_resource_response.dart';

/// Resource groups provide a mechanism to group OS policy resources. Resource groups enable OS policy authors to create a single OS policy to be applied to VMs running different operating Systems. When the OS policy is applied to a target VM, the appropriate resource group within the OS policy is selected based on the `OSFilter` specified within the resource group.
class OSPolicyResourceGroupResponse {
  /// List of inventory filters for the resource group. The resources in this resource group are applied to the target VM if it satisfies at least one of the following inventory filters. For example, to apply this resource group to VMs running either `RHEL` or `CentOS` operating systems, specify 2 items for the list with following values: inventory_filters[0].os_short_name='rhel' and inventory_filters[1].os_short_name='centos' If the list is empty, this resource group will be applied to the target VM unconditionally.
  final List<OSPolicyInventoryFilterResponse> inventoryFilters;

  /// List of resources configured for this resource group. The resources are executed in the exact order specified here.
  final List<OSPolicyResourceResponse> resources;

  /// Creates a new [OSPolicyResourceGroupResponse].
  /// [inventoryFilters] List of inventory filters for the resource group. The resources in this resource group are applied to the target VM if it satisfies at least one of the following inventory filters. For example, to apply this resource group to VMs running either `RHEL` or `CentOS` operating systems, specify 2 items for the list with following values: inventory_filters[0].os_short_name='rhel' and inventory_filters[1].os_short_name='centos' If the list is empty, this resource group will be applied to the target VM unconditionally.
  /// [resources] List of resources configured for this resource group. The resources are executed in the exact order specified here.
  OSPolicyResourceGroupResponse({
    required this.inventoryFilters,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inventoryFilters':
          pulumi.Input.encodeList<
            OSPolicyInventoryFilterResponse,
            Map<String, dynamic>
          >(inventoryFilters, (value) => value.toMap()),
      'resources':
          pulumi.Input.encodeList<
            OSPolicyResourceResponse,
            Map<String, dynamic>
          >(resources, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourceGroupResponse.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceGroupResponse(
      inventoryFilters:
          pulumi.Input.decodeList<OSPolicyInventoryFilterResponse>(
            map['inventoryFilters'],
            (value) => OSPolicyInventoryFilterResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      resources: pulumi.Input.decodeList<OSPolicyResourceResponse>(
        map['resources'],
        (value) => OSPolicyResourceResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
