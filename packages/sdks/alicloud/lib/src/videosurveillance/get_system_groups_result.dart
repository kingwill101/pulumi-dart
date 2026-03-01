// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_system_groups_group.dart';

/// Result data returned by getSystemGroups.
class GetSystemGroupsResult {
  final List<GetSystemGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? inProtocol;
  final String? name;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetSystemGroupsResult].
  /// [groups] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [inProtocol] Optional.
  /// [name] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  GetSystemGroupsResult({
    required this.groups,
    required this.id,
    required this.ids,
    this.inProtocol,
    this.name,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': pulumi.Input.encodeList<GetSystemGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'inProtocol': ?inProtocol,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetSystemGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetSystemGroupsResult(
      groups: pulumi.Input.decodeList<GetSystemGroupsGroup>(map['groups'], (value) => GetSystemGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      inProtocol: map['inProtocol'] == null ? null : map['inProtocol'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

