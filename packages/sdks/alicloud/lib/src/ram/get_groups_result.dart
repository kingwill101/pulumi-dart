// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_groups_group.dart';

/// Result data returned by getGroups.
class GetGroupsResult {
  /// A list of groups. Each element contains the following attributes:
  final List<GetGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? nameRegex;
  /// A list of ram group names.
  final List<String> names;
  final String? outputFile;
  final String? policyName;
  final String? policyType;
  final String? userName;

  /// Creates a new [GetGroupsResult].
  /// [groups] A list of groups. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [nameRegex] Optional.
  /// [names] A list of ram group names.
  /// [outputFile] Optional.
  /// [policyName] Optional.
  /// [policyType] Optional.
  /// [userName] Optional.
  GetGroupsResult({
    required this.groups,
    required this.id,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.policyName,
    this.policyType,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': pulumi.Input.encodeList<GetGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'policyName': ?policyName,
      'policyType': ?policyType,
      'userName': ?userName,
    };
  }

  factory GetGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetGroupsResult(
      groups: pulumi.Input.decodeList<GetGroupsGroup>(map['groups'], (value) => GetGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      policyName: map['policyName'] == null ? null : map['policyName']! as String,
      policyType: map['policyType'] == null ? null : map['policyType']! as String,
      userName: map['userName'] == null ? null : map['userName']! as String,
    );
  }
}

