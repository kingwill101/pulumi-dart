// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dcdn_kv_namespace_kv_namespace_args_doc}
/// The set of arguments for KvNamespace.
/// {@endtemplate}
/// {@macro pulumi_dcdn_kv_namespace_kv_namespace_args_doc}
class KvNamespaceArgs {
  /// Namespace description information
  final pulumi.Input<String> description;
  /// Namespace name. The name can contain letters, digits, hyphens (-), and underscores (_).
  final pulumi.Input<String> namespace;

  /// Creates a new [KvNamespaceArgs].
  /// [description] Namespace description information
  /// [namespace] Namespace name. The name can contain letters, digits, hyphens (-), and underscores (_).
  const KvNamespaceArgs({
    required this.description,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'namespace': namespace,
    };
  }

  factory KvNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return KvNamespaceArgs(
      description: pulumi.Input.fromValue(map['description'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
    );
  }
}

