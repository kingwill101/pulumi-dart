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
      detail: (() { final guardedValue = map['detail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repoId: (() { final guardedValue = map['repoId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repoType: (() { final guardedValue = map['repoType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      summary: (() { final guardedValue = map['summary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

