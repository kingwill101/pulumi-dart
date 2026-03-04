// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registry_enterprise_namespaces_namespace.dart';

/// Result data returned by getRegistryEnterpriseNamespaces.
class GetRegistryEnterpriseNamespacesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of matched Container Registry Enterprise Edition namespaces. Each item formats as `&lt;instance_id&gt;:&lt;namespace_name&gt;`. Before 1.161.0, its element is a namespace uuid.
  final List<String> ids;

  /// ID of Container Registry Enterprise Edition instance.
  final String instanceId;
  final String? nameRegex;

  /// A list of namespace names.
  final List<String> names;

  /// A list of matched Container Registry Enterprise Edition namespaces. Each element contains the following attributes:
  final List<GetRegistryEnterpriseNamespacesNamespace> namespaces;
  final String? outputFile;

  /// Creates a new [GetRegistryEnterpriseNamespacesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of matched Container Registry Enterprise Edition namespaces. Each item formats as `&lt;instance_id&gt;:&lt;namespace_name&gt;`. Before 1.161.0, its element is a namespace uuid.
  /// [instanceId] ID of Container Registry Enterprise Edition instance.
  /// [nameRegex] Optional.
  /// [names] A list of namespace names.
  /// [namespaces] A list of matched Container Registry Enterprise Edition namespaces. Each element contains the following attributes:
  /// [outputFile] Optional.
  GetRegistryEnterpriseNamespacesResult({
    required this.id,
    required this.ids,
    required this.instanceId,
    this.nameRegex,
    required this.names,
    required this.namespaces,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'namespaces':
          pulumi.Input.encodeList<
            GetRegistryEnterpriseNamespacesNamespace,
            Map<String, dynamic>
          >(namespaces, (value) => value.toMap()),
      'outputFile': ?outputFile,
    };
  }

  factory GetRegistryEnterpriseNamespacesResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegistryEnterpriseNamespacesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      namespaces:
          pulumi.Input.decodeList<GetRegistryEnterpriseNamespacesNamespace>(
            map['namespaces']!,
            (value) => GetRegistryEnterpriseNamespacesNamespace.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
