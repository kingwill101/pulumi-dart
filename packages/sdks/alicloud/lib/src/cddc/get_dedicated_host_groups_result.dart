// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_host_groups_group.dart';

/// Result data returned by getDedicatedHostGroups.
class GetDedicatedHostGroupsResult {
  final String? engine;
  final List<GetDedicatedHostGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetDedicatedHostGroupsResult].
  /// [engine] Optional.
  /// [groups] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  GetDedicatedHostGroupsResult({
    this.engine,
    required this.groups,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?engine,
      'groups': pulumi.Input.encodeList<GetDedicatedHostGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetDedicatedHostGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostGroupsResult(
      engine: map['engine'] == null ? null : map['engine'] as String,
      groups: pulumi.Input.decodeList<GetDedicatedHostGroupsGroup>(map['groups'], (value) => GetDedicatedHostGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

