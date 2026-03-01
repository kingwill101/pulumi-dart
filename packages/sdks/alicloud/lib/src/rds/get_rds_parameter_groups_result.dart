// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rds_parameter_groups_group.dart';

/// Result data returned by getRdsParameterGroups.
class GetRdsParameterGroupsResult {
  final bool? enableDetails;
  final List<GetRdsParameterGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetRdsParameterGroupsResult].
  /// [enableDetails] Optional.
  /// [groups] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  GetRdsParameterGroupsResult({
    this.enableDetails,
    required this.groups,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'groups': pulumi.Input.encodeList<GetRdsParameterGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetRdsParameterGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetRdsParameterGroupsResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      groups: pulumi.Input.decodeList<GetRdsParameterGroupsGroup>(map['groups'], (value) => GetRdsParameterGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

