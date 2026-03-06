// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cr_get_namespaces_get_namespaces_args_doc}
/// Arguments for getNamespaces.
/// {@endtemplate}
/// {@macro pulumi_cr_get_namespaces_get_namespaces_args_doc}
class GetNamespacesArgs {
  /// A regex string to filter results by namespace name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetNamespacesArgs].
  /// [nameRegex] A regex string to filter results by namespace name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  const GetNamespacesArgs({
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetNamespacesArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespacesArgs(
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

