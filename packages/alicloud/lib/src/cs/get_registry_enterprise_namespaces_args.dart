// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_get_registry_enterprise_namespaces_get_registry_enterprise_namespaces_args_doc}
/// Arguments for getRegistryEnterpriseNamespaces.
/// {@endtemplate}
/// {@macro pulumi_cs_get_registry_enterprise_namespaces_get_registry_enterprise_namespaces_args_doc}
class GetRegistryEnterpriseNamespacesArgs {
  /// A list of ids to filter results by namespace id. Each item formats as `<instance_id>:<namespace_name>`.
  final pulumi.Input<List<String>>? ids;
  /// ID of Container Registry Enterprise Edition instance.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter results by namespace name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetRegistryEnterpriseNamespacesArgs].
  /// [ids] A list of ids to filter results by namespace id. Each item formats as `<instance_id>:<namespace_name>`.
  /// [instanceId] ID of Container Registry Enterprise Edition instance.
  /// [nameRegex] A regex string to filter results by namespace name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetRegistryEnterpriseNamespacesArgs({
    List<String>? ids,
    required String instanceId,
    String? nameRegex,
    String? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetRegistryEnterpriseNamespacesArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryEnterpriseNamespacesArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

