// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_deploy_groups_group.dart';

/// Result data returned by getDeployGroups.
class GetDeployGroupsResult {
  /// The ID of the application that you want to deploy.
  final String appId;
  /// A list of consumer group ids.
  final List<GetDeployGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? nameRegex;
  /// A list of deploy group names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetDeployGroupsResult].
  /// [appId] The ID of the application that you want to deploy.
  /// [groups] A list of consumer group ids.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [nameRegex] Optional.
  /// [names] A list of deploy group names.
  /// [outputFile] Optional.
  GetDeployGroupsResult({
    required this.appId,
    required this.groups,
    required this.id,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'groups': pulumi.Input.encodeList<GetDeployGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetDeployGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetDeployGroupsResult(
      appId: map['appId'] as String,
      groups: pulumi.Input.decodeList<GetDeployGroupsGroup>(map['groups']!, (value) => GetDeployGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

