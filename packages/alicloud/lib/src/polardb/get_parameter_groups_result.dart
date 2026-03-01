// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_parameter_groups_group.dart';

/// Result data returned by getParameterGroups.
class GetParameterGroupsResult {
  /// The type of the database engine.
  final String? dbType;
  /// The version number of the database engine.
  final String? dbVersion;
  /// A list of PolarDB Parameter Groups. Each element contains the following attributes:
  final List<GetParameterGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Parameter Group names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetParameterGroupsResult].
  /// [dbType] The type of the database engine.
  /// [dbVersion] The version number of the database engine.
  /// [groups] A list of PolarDB Parameter Groups. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Parameter Group names.
  /// [outputFile] Optional.
  GetParameterGroupsResult({
    this.dbType,
    this.dbVersion,
    required this.groups,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbType': ?dbType,
      'dbVersion': ?dbVersion,
      'groups': pulumi.Input.encodeList<GetParameterGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetParameterGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetParameterGroupsResult(
      dbType: map['dbType'] == null ? null : map['dbType'] as String,
      dbVersion: map['dbVersion'] == null ? null : map['dbVersion'] as String,
      groups: pulumi.Input.decodeList<GetParameterGroupsGroup>(map['groups'], (value) => GetParameterGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

