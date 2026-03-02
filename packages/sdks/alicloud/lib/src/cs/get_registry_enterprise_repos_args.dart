// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_get_registry_enterprise_repos_get_registry_enterprise_repos_args_doc}
/// Arguments for getRegistryEnterpriseRepos.
/// {@endtemplate}
/// {@macro pulumi_cs_get_registry_enterprise_repos_get_registry_enterprise_repos_args_doc}
class GetRegistryEnterpriseReposArgs {
  /// Whether to query the detailed list of resource attributes. Default value: `false`.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Repository IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the Container Registry instance.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter results by Repository name.
  final pulumi.Input<String>? nameRegex;
  /// The name of the namespace to which the Repository belongs.
  final pulumi.Input<String>? namespace;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetRegistryEnterpriseReposArgs].
  /// [enableDetails] Whether to query the detailed list of resource attributes. Default value: `false`.
  /// [ids] A list of Repository IDs.
  /// [instanceId] The ID of the Container Registry instance.
  /// [nameRegex] A regex string to filter results by Repository name.
  /// [namespace] The name of the namespace to which the Repository belongs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetRegistryEnterpriseReposArgs({
    this.enableDetails,
    this.ids,
    required this.instanceId,
    this.nameRegex,
    this.namespace,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'namespace': ?namespace,
      'outputFile': ?outputFile,
    };
  }

  factory GetRegistryEnterpriseReposArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryEnterpriseReposArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      instanceId: (map['instanceId'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

