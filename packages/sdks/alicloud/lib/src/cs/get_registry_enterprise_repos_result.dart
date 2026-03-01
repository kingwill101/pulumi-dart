// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registry_enterprise_repos_repo.dart';

/// Result data returned by getRegistryEnterpriseRepos.
class GetRegistryEnterpriseReposResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// The ID of the Container Registry instance to which the Repository belongs.
  final String instanceId;
  final String? nameRegex;
  /// A list of Repository names.
  final List<String> names;
  /// The name of the namespace to which the Repository belongs.
  final String? namespace;
  final String? outputFile;
  /// A list of Repositories. Each element contains the following attributes:
  final List<GetRegistryEnterpriseReposRepo> repos;

  /// Creates a new [GetRegistryEnterpriseReposResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] The ID of the Container Registry instance to which the Repository belongs.
  /// [nameRegex] Optional.
  /// [names] A list of Repository names.
  /// [namespace] The name of the namespace to which the Repository belongs.
  /// [outputFile] Optional.
  /// [repos] A list of Repositories. Each element contains the following attributes:
  GetRegistryEnterpriseReposResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.instanceId,
    this.nameRegex,
    required this.names,
    this.namespace,
    this.outputFile,
    required this.repos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'namespace': ?namespace,
      'outputFile': ?outputFile,
      'repos': pulumi.Input.encodeList<GetRegistryEnterpriseReposRepo, Map<String, dynamic>>(repos, (value) => value.toMap()),
    };
  }

  factory GetRegistryEnterpriseReposResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryEnterpriseReposResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      repos: pulumi.Input.decodeList<GetRegistryEnterpriseReposRepo>(map['repos'], (value) => GetRegistryEnterpriseReposRepo.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

