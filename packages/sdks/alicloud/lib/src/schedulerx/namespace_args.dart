// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_schedulerx_namespace_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_schedulerx_namespace_namespace_args_doc}
class NamespaceArgs {
  /// Namespace description.
  final pulumi.Input<String>? description;
  /// Namespace name.
  final pulumi.Input<String> namespaceName;
  /// namespace uid
  final pulumi.Input<String>? namespaceUid;

  /// Creates a new [NamespaceArgs].
  /// [description] Namespace description.
  /// [namespaceName] Namespace name.
  /// [namespaceUid] namespace uid
  NamespaceArgs({
    this.description,
    required this.namespaceName,
    this.namespaceUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'namespaceName': namespaceName,
      'namespaceUid': ?namespaceUid,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      namespaceUid: map['namespaceUid'] == null ? null : (map['namespaceUid'] as String).input(),
    );
  }
}

