// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eci_get_container_groups_get_container_groups_args_doc}
/// Arguments for getContainerGroups.
/// {@endtemplate}
/// {@macro pulumi_eci_get_container_groups_get_container_groups_args_doc}
class GetContainerGroupsArgs {
  /// The name of ContainerGroup.
  final pulumi.Input<String>? containerGroupName;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Container Group IDs.
  final pulumi.Input<List<String>>? ids;
  /// The maximum number of resources returned in the response. Default value is `20`. Maximum value: `20`. The number of returned results is no greater than the specified number.
  final pulumi.Input<int>? limit;
  /// A regex string to filter results by Container Group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the resource group to which the container group belongs. If you have not specified a resource group for the container group, it is added to the default resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The status list. For more information, see the description of ContainerGroup arrays.
  final pulumi.Input<String>? status;
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the vSwitch. Currently, container groups can only be deployed in VPC networks.
  final pulumi.Input<String>? vswitchId;
  final pulumi.Input<bool>? withEvent;
  /// The ID of the zone where you want to deploy the container group. If no value is specified, the system assigns a zone to the container group. By default, no value is specified.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetContainerGroupsArgs].
  /// [containerGroupName] The name of ContainerGroup.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Container Group IDs.
  /// [limit] The maximum number of resources returned in the response. Default value is `20`. Maximum value: `20`. The number of returned results is no greater than the specified number.
  /// [nameRegex] A regex string to filter results by Container Group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The ID of the resource group to which the container group belongs. If you have not specified a resource group for the container group, it is added to the default resource group.
  /// [status] The status list. For more information, see the description of ContainerGroup arrays.
  /// [tags] Optional.
  /// [vswitchId] The ID of the vSwitch. Currently, container groups can only be deployed in VPC networks.
  /// [withEvent] Optional.
  /// [zoneId] The ID of the zone where you want to deploy the container group. If no value is specified, the system assigns a zone to the container group. By default, no value is specified.
  const GetContainerGroupsArgs({
    this.containerGroupName,
    this.enableDetails,
    this.ids,
    this.limit,
    this.nameRegex,
    this.outputFile,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.vswitchId,
    this.withEvent,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupName': ?containerGroupName,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'limit': ?limit,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vswitchId': ?vswitchId,
      'withEvent': ?withEvent,
      'zoneId': ?zoneId,
    };
  }

  factory GetContainerGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupsArgs(
      containerGroupName: (() { final guardedValue = map['containerGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      withEvent: (() { final guardedValue = map['withEvent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

