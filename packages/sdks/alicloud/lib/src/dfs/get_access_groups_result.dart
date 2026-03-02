// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_groups_group.dart';

/// Result data returned by getAccessGroups.
class GetAccessGroupsResult {
  final List<GetAccessGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final int? limit;
  final String? nameRegex;
  final List<String> names;
  final String? orderBy;
  final String? orderType;
  final String? outputFile;
  final int? startOffset;

  /// Creates a new [GetAccessGroupsResult].
  /// [groups] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [limit] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [orderBy] Optional.
  /// [orderType] Optional.
  /// [outputFile] Optional.
  /// [startOffset] Optional.
  GetAccessGroupsResult({
    required this.groups,
    required this.id,
    required this.ids,
    this.limit,
    this.nameRegex,
    required this.names,
    this.orderBy,
    this.orderType,
    this.outputFile,
    this.startOffset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': pulumi.Input.encodeList<GetAccessGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'limit': ?limit,
      'nameRegex': ?nameRegex,
      'names': names,
      'orderBy': ?orderBy,
      'orderType': ?orderType,
      'outputFile': ?outputFile,
      'startOffset': ?startOffset,
    };
  }

  factory GetAccessGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetAccessGroupsResult(
      groups: pulumi.Input.decodeList<GetAccessGroupsGroup>(map['groups'], (value) => GetAccessGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      limit: map['limit'] == null ? null : map['limit']! as int,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      orderBy: map['orderBy'] == null ? null : map['orderBy']! as String,
      orderType: map['orderType'] == null ? null : map['orderType']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      startOffset: map['startOffset'] == null ? null : map['startOffset']! as int,
    );
  }
}

