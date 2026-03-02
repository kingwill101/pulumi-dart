// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_container_groups_group.dart';

/// Result data returned by getContainerGroups.
class GetContainerGroupsResult {
  final String? containerGroupName;
  final bool? enableDetails;
  final List<GetContainerGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final int? limit;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? resourceGroupId;
  final String? status;
  final Map<String, String>? tags;
  final String? vswitchId;
  final bool? withEvent;
  final String? zoneId;

  /// Creates a new [GetContainerGroupsResult].
  /// [containerGroupName] Optional.
  /// [enableDetails] Optional.
  /// [groups] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [limit] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [resourceGroupId] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  /// [vswitchId] Optional.
  /// [withEvent] Optional.
  /// [zoneId] Optional.
  GetContainerGroupsResult({
    this.containerGroupName,
    this.enableDetails,
    required this.groups,
    required this.id,
    required this.ids,
    this.limit,
    this.nameRegex,
    required this.names,
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
      'groups': pulumi.Input.encodeList<GetContainerGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'limit': ?limit,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vswitchId': ?vswitchId,
      'withEvent': ?withEvent,
      'zoneId': ?zoneId,
    };
  }

  factory GetContainerGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupsResult(
      containerGroupName: map['containerGroupName'] == null ? null : map['containerGroupName']! as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      groups: pulumi.Input.decodeList<GetContainerGroupsGroup>(map['groups'], (value) => GetContainerGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      limit: map['limit'] == null ? null : map['limit']! as int,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId']! as String,
      withEvent: map['withEvent'] == null ? null : map['withEvent']! as bool,
      zoneId: map['zoneId'] == null ? null : map['zoneId']! as String,
    );
  }
}

