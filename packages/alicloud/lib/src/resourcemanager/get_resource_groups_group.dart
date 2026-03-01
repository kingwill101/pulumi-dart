// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_groups_group_region_status.dart';

class GetResourceGroupsGroup {
  /// The ID of the Alibaba Cloud account to which the resource group belongs.
  final String accountId;
  /// The display name of the resource group.
  final String displayName;
  /// The ID of the resource group.
  final String id;
  /// The unique identifier of the resource group.
  final String name;
  /// (Available since v1.114.0) The status of the resource group in all regions.
  final List<GetResourceGroupsGroupRegionStatus> regionStatuses;
  /// (Available since v1.114.0) The unique identifier of the resource group.
  final String resourceGroupName;
  /// The status of the resource group. Valid values: `Creating`, `Deleted`, `Deleting`, `OK` and `PendingDelete`. **NOTE:** From version 1.114.0, `status` can be set to `Deleting`.
  final String status;

  /// Creates a new [GetResourceGroupsGroup].
  /// [accountId] The ID of the Alibaba Cloud account to which the resource group belongs.
  /// [displayName] The display name of the resource group.
  /// [id] The ID of the resource group.
  /// [name] The unique identifier of the resource group.
  /// [regionStatuses] (Available since v1.114.0) The status of the resource group in all regions.
  /// [resourceGroupName] (Available since v1.114.0) The unique identifier of the resource group.
  /// [status] The status of the resource group. Valid values: `Creating`, `Deleted`, `Deleting`, `OK` and `PendingDelete`. **NOTE:** From version 1.114.0, `status` can be set to `Deleting`.
  GetResourceGroupsGroup({
    required this.accountId,
    required this.displayName,
    required this.id,
    required this.name,
    required this.regionStatuses,
    required this.resourceGroupName,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'displayName': displayName,
      'id': id,
      'name': name,
      'regionStatuses': pulumi.Input.encodeList<GetResourceGroupsGroupRegionStatus, Map<String, dynamic>>(regionStatuses, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'status': status,
    };
  }

  factory GetResourceGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupsGroup(
      accountId: map['accountId'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      regionStatuses: pulumi.Input.decodeList<GetResourceGroupsGroupRegionStatus>(map['regionStatuses'], (value) => GetResourceGroupsGroupRegionStatus.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      status: map['status'] as String,
    );
  }
}

