// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edas_get_namespaces_get_namespaces_args_doc}
/// Arguments for getNamespaces.
/// {@endtemplate}
/// {@macro pulumi_edas_get_namespaces_get_namespaces_args_doc}
class GetNamespacesArgs {
  /// A list of Namespace IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Namespace name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetNamespacesArgs].
  /// [ids] A list of Namespace IDs.
  /// [nameRegex] A regex string to filter results by Namespace name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetNamespacesArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetNamespacesArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespacesArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

