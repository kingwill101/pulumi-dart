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
    pulumi.Output<String>? detail,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? repoId,
    pulumi.Output<String>? repoType,
    pulumi.Output<String>? summary,
  }) :
      detail = pulumi.Input.asOptionalInput<String>(detail),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      repoId = pulumi.Input.asOptionalInput<String>(repoId),
      repoType = pulumi.Input.asOptionalInput<String>(repoType),
      summary = pulumi.Input.asOptionalInput<String>(summary);

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
      detail: map['detail'] == null ? null : pulumi.Output.create<String>(map['detail'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      repoId: map['repoId'] == null ? null : pulumi.Output.create<String>(map['repoId'] as String),
      repoType: map['repoType'] == null ? null : pulumi.Output.create<String>(map['repoType'] as String),
      summary: map['summary'] == null ? null : pulumi.Output.create<String>(map['summary'] as String),
    );
  }
}

