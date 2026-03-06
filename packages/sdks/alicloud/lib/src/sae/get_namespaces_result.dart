// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_namespaces_namespace.dart';

/// Result data returned by getNamespaces.
class GetNamespacesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final List<GetNamespacesNamespace> namespaces;
  final String? outputFile;

  /// Creates a new [GetNamespacesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [namespaces] Required.
  /// [outputFile] Optional.
  const GetNamespacesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    required this.namespaces,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'namespaces': pulumi.Input.encodeList<GetNamespacesNamespace, Map<String, dynamic>>(namespaces, (value) => value.toMap()),
      'outputFile': ?outputFile,
    };
  }

  factory GetNamespacesResult.fromMap(Map<String, dynamic> map) {
    return GetNamespacesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      namespaces: pulumi.Input.decodeList<GetNamespacesNamespace>(map['namespaces']!, (value) => GetNamespacesNamespace.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

