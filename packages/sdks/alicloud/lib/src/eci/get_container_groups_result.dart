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
  const GetContainerGroupsResult({
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
      containerGroupName: (() { final guardedValue = map['containerGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      groups: pulumi.Input.decodeList<GetContainerGroupsGroup>(map['groups']!, (value) => GetContainerGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return guardedValue as int; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withEvent: (() { final guardedValue = map['withEvent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

