// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_schedulerx_get_namespaces_get_namespaces_args_doc}
/// Arguments for getNamespaces.
/// {@endtemplate}
/// {@macro pulumi_schedulerx_get_namespaces_get_namespaces_args_doc}
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
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetNamespacesArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespacesArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

