// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registry_enterprise_repos_repo_tag.dart';

class GetRegistryEnterpriseReposRepo {
  /// The ID of the Repository.
  final pulumi.Input<String> id;
  /// The ID of the Container Registry instance.
  final pulumi.Input<String> instanceId;
  /// The name of the Repository.
  final pulumi.Input<String> name;
  /// The name of the namespace to which the Repository belongs.
  final pulumi.Input<String> namespace;
  /// The type of the Repository.
  final pulumi.Input<String> repoType;
  /// The summary of the Repository.
  final pulumi.Input<String> summary;
  /// A list of image tags belong to this Repository. **Note:** `tags` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<List<GetRegistryEnterpriseReposRepoTag>> tags;

  /// Creates a new [GetRegistryEnterpriseReposRepo].
  /// [id] The ID of the Repository.
  /// [instanceId] The ID of the Container Registry instance.
  /// [name] The name of the Repository.
  /// [namespace] The name of the namespace to which the Repository belongs.
  /// [repoType] The type of the Repository.
  /// [summary] The summary of the Repository.
  /// [tags] A list of image tags belong to this Repository. **Note:** `tags` takes effect only if `enable_details` is set to `true`.
  const GetRegistryEnterpriseReposRepo({
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
      'tags': pulumi.Input.mapInputValue<List<GetRegistryEnterpriseReposRepoTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<GetRegistryEnterpriseReposRepoTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRegistryEnterpriseReposRepo.fromMap(Map<String, dynamic> map) {
    return GetRegistryEnterpriseReposRepo(
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      repoType: pulumi.Input.fromValue(map['repoType'] as String),
      summary: pulumi.Input.fromValue(map['summary'] as String),
      tags: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegistryEnterpriseReposRepoTag>(map['tags']!, (value) => GetRegistryEnterpriseReposRepoTag.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

