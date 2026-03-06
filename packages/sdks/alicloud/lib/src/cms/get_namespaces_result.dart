// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_namespaces_namespace.dart';

/// Result data returned by getNamespaces.
class GetNamespacesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? keyword;
  final List<GetNamespacesNamespace> namespaces;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;

  /// Creates a new [GetNamespacesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [keyword] Optional.
  /// [namespaces] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  const GetNamespacesResult({
    required this.id,
    required this.ids,
    this.keyword,
    required this.namespaces,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'keyword': ?keyword,
      'namespaces': pulumi.Input.encodeList<GetNamespacesNamespace, Map<String, dynamic>>(namespaces, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetNamespacesResult.fromMap(Map<String, dynamic> map) {
    return GetNamespacesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyword: (() { final guardedValue = map['keyword']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaces: pulumi.Input.decodeList<GetNamespacesNamespace>(map['namespaces']!, (value) => GetNamespacesNamespace.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}

