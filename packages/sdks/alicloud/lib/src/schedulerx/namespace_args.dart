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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      namespaceUid: (() {
        final guardedValue = map['namespaceUid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
