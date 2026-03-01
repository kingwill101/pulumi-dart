// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nlb_get_server_groups_get_server_groups_args_doc}
/// Arguments for getServerGroups.
/// {@endtemplate}
/// {@macro pulumi_nlb_get_server_groups_get_server_groups_args_doc}
class GetServerGroupsArgs {
  /// A list of Server Group IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Server Group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the resource group to which the security group belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The names of the server groups to be queried.
  final pulumi.Input<List<String>>? serverGroupNames;
  /// The type of the server group. Valid values: `Instance`, `Ip`.
  final pulumi.Input<String>? serverGroupType;
  /// The status of the resource. Valid values: `Available`, `Configuring`, `Creating`.
  final pulumi.Input<String>? status;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetServerGroupsArgs].
  /// [ids] A list of Server Group IDs.
  /// [nameRegex] A regex string to filter results by Server Group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The ID of the resource group to which the security group belongs.
  /// [serverGroupNames] The names of the server groups to be queried.
  /// [serverGroupType] The type of the server group. Valid values: `Instance`, `Ip`.
  /// [status] The status of the resource. Valid values: `Available`, `Configuring`, `Creating`.
  /// [tags] Optional.
  GetServerGroupsArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? resourceGroupId,
    List<String>? serverGroupNames,
    String? serverGroupType,
    String? status,
    Map<String, String>? tags,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      serverGroupNames = pulumi.Input.asOptionalInput<List<String>>(serverGroupNames),
      serverGroupType = pulumi.Input.asOptionalInput<String>(serverGroupType),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'serverGroupNames': ?serverGroupNames,
      'serverGroupType': ?serverGroupType,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetServerGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetServerGroupsArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      serverGroupNames: map['serverGroupNames'] == null ? null : (map['serverGroupNames'] as List).cast<String>(),
      serverGroupType: map['serverGroupType'] == null ? null : map['serverGroupType'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

