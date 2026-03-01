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
  GetContainerGroupsArgs({
    pulumi.Output<String>? containerGroupName,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<int>? limit,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<bool>? withEvent,
    pulumi.Output<String>? zoneId,
  }) :
      containerGroupName = pulumi.Input.asOptionalInput<String>(containerGroupName),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      limit = pulumi.Input.asOptionalInput<int>(limit),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      withEvent = pulumi.Input.asOptionalInput<bool>(withEvent),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      containerGroupName: map['containerGroupName'] == null ? null : pulumi.Output.create<String>(map['containerGroupName'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      limit: map['limit'] == null ? null : pulumi.Output.create<int>(map['limit'] as int),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      withEvent: map['withEvent'] == null ? null : pulumi.Output.create<bool>(map['withEvent'] as bool),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

