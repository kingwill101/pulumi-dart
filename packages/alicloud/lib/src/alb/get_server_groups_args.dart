// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_get_server_groups_get_server_groups_args_doc}
/// Arguments for getServerGroups.
/// {@endtemplate}
/// {@macro pulumi_alb_get_server_groups_get_server_groups_args_doc}
class GetServerGroupsArgs {
  /// Whether to query the detailed list of resource attributes. Default value: `false`.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Server Group IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Server Group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The server group IDs.
  final pulumi.Input<List<String>>? serverGroupIds;
  /// The names of the Server Group.
  final pulumi.Input<String>? serverGroupName;
  /// The status of the Server Group. Valid values: `Available`, `Configuring`, `Provisioning`.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the virtual private cloud (VPC).
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetServerGroupsArgs].
  /// [enableDetails] Whether to query the detailed list of resource attributes. Default value: `false`.
  /// [ids] A list of Server Group IDs.
  /// [nameRegex] A regex string to filter results by Server Group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The ID of the resource group.
  /// [serverGroupIds] The server group IDs.
  /// [serverGroupName] The names of the Server Group.
  /// [status] The status of the Server Group. Valid values: `Available`, `Configuring`, `Provisioning`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] The ID of the virtual private cloud (VPC).
  GetServerGroupsArgs({
    bool? enableDetails,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? resourceGroupId,
    List<String>? serverGroupIds,
    String? serverGroupName,
    String? status,
    Map<String, String>? tags,
    String? vpcId,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      serverGroupIds = pulumi.Input.asOptionalInput<List<String>>(serverGroupIds),
      serverGroupName = pulumi.Input.asOptionalInput<String>(serverGroupName),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'serverGroupIds': ?serverGroupIds,
      'serverGroupName': ?serverGroupName,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GetServerGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetServerGroupsArgs(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      serverGroupIds: map['serverGroupIds'] == null ? null : (map['serverGroupIds'] as List).cast<String>(),
      serverGroupName: map['serverGroupName'] == null ? null : map['serverGroupName'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

