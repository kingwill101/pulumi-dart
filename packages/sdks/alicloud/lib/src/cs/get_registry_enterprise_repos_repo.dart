// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registry_enterprise_repos_repo_tag.dart';

class GetRegistryEnterpriseReposRepo {
  /// The ID of the Repository.
  final String id;
  /// The ID of the Container Registry instance.
  final String instanceId;
  /// The name of the Repository.
  final String name;
  /// The name of the namespace to which the Repository belongs.
  final String namespace;
  /// The type of the Repository.
  final String repoType;
  /// The summary of the Repository.
  final String summary;
  /// A list of image tags belong to this Repository. **Note:** `tags` takes effect only if `enable_details` is set to `true`.
  final List<GetRegistryEnterpriseReposRepoTag> tags;

  /// Creates a new [GetRegistryEnterpriseReposRepo].
  /// [id] The ID of the Repository.
  /// [instanceId] The ID of the Container Registry instance.
  /// [name] The name of the Repository.
  /// [namespace] The name of the namespace to which the Repository belongs.
  /// [repoType] The type of the Repository.
  /// [summary] The summary of the Repository.
  /// [tags] A list of image tags belong to this Repository. **Note:** `tags` takes effect only if `enable_details` is set to `true`.
  GetRegistryEnterpriseReposRepo({
    required this.id,
    required this.instanceId,
    required this.name,
    required this.namespace,
    required this.repoType,
    required this.summary,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'instanceId': instanceId,
      'name': name,
      'namespace': namespace,
      'repoType': repoType,
      'summary': summary,
      'tags': pulumi.Input.encodeList<GetRegistryEnterpriseReposRepoTag, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory GetRegistryEnterpriseReposRepo.fromMap(Map<String, dynamic> map) {
    return GetRegistryEnterpriseReposRepo(
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      name: map['name'] as String,
      namespace: map['namespace'] as String,
      repoType: map['repoType'] as String,
      summary: map['summary'] as String,
      tags: pulumi.Input.decodeList<GetRegistryEnterpriseReposRepoTag>(map['tags'], (value) => GetRegistryEnterpriseReposRepoTag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

