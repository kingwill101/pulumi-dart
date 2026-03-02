// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cms_get_namespaces_get_namespaces_args_doc}
/// Arguments for getNamespaces.
/// {@endtemplate}
/// {@macro pulumi_cms_get_namespaces_get_namespaces_args_doc}
class GetNamespacesArgs {
  /// A list of Namespace IDs.
  final pulumi.Input<List<String>>? ids;
  /// The keywords of the `namespace` or `description` of the namespace.
  final pulumi.Input<String>? keyword;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// Creates a new [GetNamespacesArgs].
  /// [ids] A list of Namespace IDs.
  /// [keyword] The keywords of the `namespace` or `description` of the namespace.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetNamespacesArgs({
    this.ids,
    this.keyword,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'keyword': ?keyword,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetNamespacesArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespacesArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      keyword: map['keyword'] == null ? null : (map['keyword']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
    );
  }
}

