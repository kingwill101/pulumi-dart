// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_engine_namespaces_namespace.dart';

/// Result data returned by getEngineNamespaces.
class GetEngineNamespacesResult {
  final String? acceptLanguage;
  final String? clusterId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? instanceId;
  /// A list of Mse Engine Namespaces. Each element contains the following attributes:
  final List<GetEngineNamespacesNamespace> namespaces;
  final String? outputFile;

  /// Creates a new [GetEngineNamespacesResult].
  /// [acceptLanguage] Optional.
  /// [clusterId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Optional.
  /// [namespaces] A list of Mse Engine Namespaces. Each element contains the following attributes:
  /// [outputFile] Optional.
  GetEngineNamespacesResult({
    this.acceptLanguage,
    this.clusterId,
    required this.id,
    required this.ids,
    this.instanceId,
    required this.namespaces,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'clusterId': ?clusterId,
      'id': id,
      'ids': ids,
      'instanceId': ?instanceId,
      'namespaces': pulumi.Input.encodeList<GetEngineNamespacesNamespace, Map<String, dynamic>>(namespaces, (value) => value.toMap()),
      'outputFile': ?outputFile,
    };
  }

  factory GetEngineNamespacesResult.fromMap(Map<String, dynamic> map) {
    return GetEngineNamespacesResult(
      acceptLanguage: map['acceptLanguage'] == null ? null : map['acceptLanguage']! as String,
      clusterId: map['clusterId'] == null ? null : map['clusterId']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] == null ? null : map['instanceId']! as String,
      namespaces: pulumi.Input.decodeList<GetEngineNamespacesNamespace>(map['namespaces'], (value) => GetEngineNamespacesNamespace.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
    );
  }
}

