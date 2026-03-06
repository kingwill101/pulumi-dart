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
  const GetAccessGroupsResult({
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
      groups: pulumi.Input.decodeList<GetAccessGroupsGroup>(map['groups']!, (value) => GetAccessGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return guardedValue as int; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderType: (() { final guardedValue = map['orderType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startOffset: (() { final guardedValue = map['startOffset']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}

