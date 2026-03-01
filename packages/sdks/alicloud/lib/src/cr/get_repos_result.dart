// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repos_repo.dart';

/// Result data returned by getRepos.
class GetReposResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of matched Container Registry Repositories. Its element is set to `names`.
  final List<String> ids;
  final String? nameRegex;
  /// A list of repository names.
  final List<String> names;
  /// Name of container registry namespace where repo is located.
  final String? namespace;
  final String? outputFile;
  /// A list of matched Container Registry Namespaces. Each element contains the following attributes:
  final List<GetReposRepo> repos;

  /// Creates a new [GetReposResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of matched Container Registry Repositories. Its element is set to `names`.
  /// [nameRegex] Optional.
  /// [names] A list of repository names.
  /// [namespace] Name of container registry namespace where repo is located.
  /// [outputFile] Optional.
  /// [repos] A list of matched Container Registry Namespaces. Each element contains the following attributes:
  GetReposResult({
    this.enableDetails,
    required this.id,
    required this.ids,
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
      'nameRegex': ?nameRegex,
      'names': names,
      'namespace': ?namespace,
      'outputFile': ?outputFile,
      'repos': pulumi.Input.encodeList<GetReposRepo, Map<String, dynamic>>(repos, (value) => value.toMap()),
    };
  }

  factory GetReposResult.fromMap(Map<String, dynamic> map) {
    return GetReposResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      repos: pulumi.Input.decodeList<GetReposRepo>(map['repos'], (value) => GetReposRepo.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

