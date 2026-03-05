// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_group_region_status.dart';

/// Input properties used for looking up and filtering ResourceGroup resources.
class ResourceGroupState {
  /// The ID of the Alibaba Cloud account to which the resource group belongs.
  final pulumi.Input<String>? accountId;
  /// The display name of the resource group. The name must be 1 to 50 characters in length.
  final pulumi.Input<String>? displayName;
  /// Field `name` has been deprecated from provider version 1.114.0. New field `resource_group_name` instead.
  final pulumi.Input<String>? name;
  /// The status of the resource group in all regions.
  final pulumi.Input<List<ResourceGroupRegionStatus>>? regionStatuses;
  /// The unique identifier of the resource group. The identifier must be 3 to 50 characters in length and can contain letters, digits, and hyphens (-). The identifier must start with a letter.
  final pulumi.Input<String>? resourceGroupName;
  /// The status of the resource group.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResourceGroupState].
  /// [accountId] The ID of the Alibaba Cloud account to which the resource group belongs.
  /// [displayName] The display name of the resource group. The name must be 1 to 50 characters in length.
  /// [name] Field `name` has been deprecated from provider version 1.114.0. New field `resource_group_name` instead.
  /// [regionStatuses] The status of the resource group in all regions.
  /// [resourceGroupName] The unique identifier of the resource group. The identifier must be 3 to 50 characters in length and can contain letters, digits, and hyphens (-). The identifier must start with a letter.
  /// [status] The status of the resource group.
  /// [tags] A mapping of tags to assign to the resource.
  ResourceGroupState({
    this.accountId,
    this.displayName,
    this.name,
    this.regionStatuses,
    this.resourceGroupName,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'displayName': ?displayName,
      'name': ?name,
      'regionStatuses': ?pulumi.Input.mapOptionalInputValue<List<ResourceGroupRegionStatus>, List<Map<String, dynamic>>>(regionStatuses, (value) => pulumi.Input.encodeList<ResourceGroupRegionStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': ?resourceGroupName,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory ResourceGroupState.fromMap(Map<String, dynamic> map) {
    return ResourceGroupState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionStatuses: (() { final guardedValue = map['regionStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceGroupRegionStatus>(guardedValue, (value) => ResourceGroupRegionStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

