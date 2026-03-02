// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegistryEnterpriseRepo resources.
class RegistryEnterpriseRepoState {
  /// The description of the repository.
  final pulumi.Input<String>? detail;
  /// The ID of the Container Registry Enterprise Edition instance.
  final pulumi.Input<String>? instanceId;
  /// The name of the image repository.
  final pulumi.Input<String>? name;
  /// The name of the namespace to which the image repository belongs.
  final pulumi.Input<String>? namespace;
  /// The ID of the repository.
  final pulumi.Input<String>? repoId;
  /// The type of the repository. Valid values:
  /// - `PUBLIC`: The repository is a public repository.
  /// - `PRIVATE`: The repository is a private repository.
  final pulumi.Input<String>? repoType;
  /// The summary about the repository.
  final pulumi.Input<String>? summary;

  /// Creates a new [RegistryEnterpriseRepoState].
  /// [detail] The description of the repository.
  /// [instanceId] The ID of the Container Registry Enterprise Edition instance.
  /// [name] The name of the image repository.
  /// [namespace] The name of the namespace to which the image repository belongs.
  /// [repoId] The ID of the repository.
  /// [repoType] The type of the repository. Valid values:
  /// [summary] The summary about the repository.
  RegistryEnterpriseRepoState({
    this.detail,
    this.instanceId,
    this.name,
    this.namespace,
    this.repoId,
    this.repoType,
    this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detail': ?detail,
      'instanceId': ?instanceId,
      'name': ?name,
      'namespace': ?namespace,
      'repoId': ?repoId,
      'repoType': ?repoType,
      'summary': ?summary,
    };
  }

  factory RegistryEnterpriseRepoState.fromMap(Map<String, dynamic> map) {
    return RegistryEnterpriseRepoState(
      detail: map['detail'] == null ? null : (map['detail']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      repoId: map['repoId'] == null ? null : (map['repoId']! as String).input(),
      repoType: map['repoType'] == null ? null : (map['repoType']! as String).input(),
      summary: map['summary'] == null ? null : (map['summary']! as String).input(),
    );
  }
}

