// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_get_registry_enterprise_namespaces_get_registry_enterprise_namespaces_args_doc}
/// Arguments for getRegistryEnterpriseNamespaces.
/// {@endtemplate}
/// {@macro pulumi_cs_get_registry_enterprise_namespaces_get_registry_enterprise_namespaces_args_doc}
class GetRegistryEnterpriseNamespacesArgs {
  /// A list of ids to filter results by namespace id. Each item formats as `&lt;instance_id&gt;:&lt;namespace_name&gt;`.
  final pulumi.Input<List<String>>? ids;
  /// ID of Container Registry Enterprise Edition instance.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter results by namespace name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetRegistryEnterpriseNamespacesArgs].
  /// [ids] A list of ids to filter results by namespace id. Each item formats as `&lt;instance_id&gt;:&lt;namespace_name&gt;`.
  /// [instanceId] ID of Container Registry Enterprise Edition instance.
  /// [nameRegex] A regex string to filter results by namespace name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  const GetRegistryEnterpriseNamespacesArgs({
    this.ids,
    required this.instanceId,
    this.nameRegex,
    this.outputFile,
  });

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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

