// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_kv_namespace_kv_namespace_args_doc}
/// The set of arguments for KvNamespace.
/// {@endtemplate}
/// {@macro pulumi_esa_kv_namespace_kv_namespace_args_doc}
class KvNamespaceArgs {
  /// The description of the namespace.
  final pulumi.Input<String>? description;
  /// The name of the namespace.
  final pulumi.Input<String> kvNamespace;

  /// Creates a new [KvNamespaceArgs].
  /// [description] The description of the namespace.
  /// [kvNamespace] The name of the namespace.
  KvNamespaceArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> kvNamespace,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      kvNamespace = pulumi.Input.asInput<String>(kvNamespace);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'kvNamespace': kvNamespace,
    };
  }

  factory KvNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return KvNamespaceArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kvNamespace: pulumi.Output.create<String>(map['kvNamespace'] as String),
    );
  }
}

