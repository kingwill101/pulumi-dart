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
  const GetGroupsResult({
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
      groups: pulumi.Input.decodeList<GetGroupsGroup>(map['groups']!, (value) => GetGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

