// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_groups_group.dart';

/// Result data returned by getServerGroups.
class GetServerGroupsResult {
  final bool? enableDetails;
  /// A list of Server Groups. Each element contains the following attributes:
  final List<GetServerGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Server Group names.
  final List<String> names;
  final String? outputFile;
  final String? resourceGroupId;
  final List<String>? serverGroupIds;
  /// The name of the Server Group.
  final String? serverGroupName;
  /// The status of the server.
  final String? status;
  /// The tags of the resource. **Note:** `tags` takes effect only if `enable_details` is set to `true`.
  final Map<String, String>? tags;
  /// The ID of the VPC.
  final String? vpcId;

  /// Creates a new [GetServerGroupsResult].
  /// [enableDetails] Optional.
  /// [groups] A list of Server Groups. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Server Group names.
  /// [outputFile] Optional.
  /// [resourceGroupId] Optional.
  /// [serverGroupIds] Optional.
  /// [serverGroupName] The name of the Server Group.
  /// [status] The status of the server.
  /// [tags] The tags of the resource. **Note:** `tags` takes effect only if `enable_details` is set to `true`.
  /// [vpcId] The ID of the VPC.
  GetServerGroupsResult({
    this.enableDetails,
    required this.groups,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.resourceGroupId,
    this.serverGroupIds,
    this.serverGroupName,
    this.status,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'groups': pulumi.Input.encodeList<GetServerGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'serverGroupIds': ?serverGroupIds,
      'serverGroupName': ?serverGroupName,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GetServerGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetServerGroupsResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      groups: pulumi.Input.decodeList<GetServerGroupsGroup>(map['groups'], (value) => GetServerGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
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

