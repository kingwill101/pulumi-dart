// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environments_environment.dart';

/// Result data returned by getEnvironments.
class GetEnvironmentsResult {
  /// The type of the environment instance.
  final String? environmentType;
  /// A list of ARMS Environments. Each element contains the following attributes:
  final List<GetEnvironmentsEnvironment> environments;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of ARMS Environment names.
  final List<String> names;
  final String? outputFile;
  /// The ID of the resource group.
  final String? resourceGroupId;
  /// The tags of the environment resource.
  final Map<String, String>? tags;

  /// Creates a new [GetEnvironmentsResult].
  /// [environmentType] The type of the environment instance.
  /// [environments] A list of ARMS Environments. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of ARMS Environment names.
  /// [outputFile] Optional.
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] The tags of the environment resource.
  GetEnvironmentsResult({
    this.environmentType,
    required this.environments,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentType': ?environmentType,
      'environments': pulumi.Input.encodeList<GetEnvironmentsEnvironment, Map<String, dynamic>>(environments, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetEnvironmentsResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentsResult(
      environmentType: map['environmentType'] == null ? null : map['environmentType'] as String,
      environments: pulumi.Input.decodeList<GetEnvironmentsEnvironment>(map['environments'], (value) => GetEnvironmentsEnvironment.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

