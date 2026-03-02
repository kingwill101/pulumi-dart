// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_registry_enterprise_repo_registry_enterprise_repo_args_doc}
/// The set of arguments for RegistryEnterpriseRepo.
/// {@endtemplate}
/// {@macro pulumi_cs_registry_enterprise_repo_registry_enterprise_repo_args_doc}
class RegistryEnterpriseRepoArgs {
  /// The description of the repository.
  final pulumi.Input<String>? detail;
  /// The ID of the Container Registry Enterprise Edition instance.
  final pulumi.Input<String> instanceId;
  /// The name of the image repository.
  final pulumi.Input<String>? name;
  /// The name of the namespace to which the image repository belongs.
  final pulumi.Input<String> namespace;
  /// The type of the repository. Valid values:
  /// - `PUBLIC`: The repository is a public repository.
  /// - `PRIVATE`: The repository is a private repository.
  final pulumi.Input<String> repoType;
  /// The summary about the repository.
  final pulumi.Input<String> summary;

  /// Creates a new [RegistryEnterpriseRepoArgs].
  /// [detail] The description of the repository.
  /// [instanceId] The ID of the Container Registry Enterprise Edition instance.
  /// [name] The name of the image repository.
  /// [namespace] The name of the namespace to which the image repository belongs.
  /// [repoType] The type of the repository. Valid values:
  /// [summary] The summary about the repository.
  RegistryEnterpriseRepoArgs({
    this.detail,
    required this.instanceId,
    this.name,
    required this.namespace,
    required this.repoType,
    required this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detail': ?detail,
      'instanceId': instanceId,
      'name': ?name,
      'namespace': namespace,
      'repoType': repoType,
      'summary': summary,
    };
  }

  factory RegistryEnterpriseRepoArgs.fromMap(Map<String, dynamic> map) {
    return RegistryEnterpriseRepoArgs(
      detail: map['detail'] == null ? null : (map['detail'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespace: (map['namespace'] as String).input(),
      repoType: (map['repoType'] as String).input(),
      summary: (map['summary'] as String).input(),
    );
  }
}

