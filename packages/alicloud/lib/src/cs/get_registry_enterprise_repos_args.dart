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
    bool? enableDetails,
    List<String>? ids,
    required String instanceId,
    String? nameRegex,
    String? namespace,
    String? outputFile,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

