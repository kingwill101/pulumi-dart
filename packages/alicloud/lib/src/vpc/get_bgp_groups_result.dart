// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bgp_groups_group.dart';

/// Result data returned by getBgpGroups.
class GetBgpGroupsResult {
  final List<GetBgpGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? routerId;
  final String? status;

  /// Creates a new [GetBgpGroupsResult].
  /// [groups] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [routerId] Optional.
  /// [status] Optional.
  GetBgpGroupsResult({
    required this.groups,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.routerId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': pulumi.Input.encodeList<GetBgpGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'routerId': ?routerId,
      'status': ?status,
    };
  }

  factory GetBgpGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetBgpGroupsResult(
      groups: pulumi.Input.decodeList<GetBgpGroupsGroup>(map['groups'], (value) => GetBgpGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      routerId: map['routerId'] == null ? null : map['routerId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

