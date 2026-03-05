// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edas_namespace_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_edas_namespace_namespace_args_doc}
class NamespaceArgs {
  /// Specifies whether to enable remote debugging.
  final pulumi.Input<bool>? debugEnable;
  /// The description of the namespace, The description can be up to `128` characters in length.
  final pulumi.Input<String>? description;
  /// The ID of the namespace.
  /// - The ID of a custom namespace is in the `region ID:namespace identifier` format. An example is `cn-beijing:tdy218`.
  /// - The ID of the default namespace is in the `region ID` format. An example is cn-beijing.
  final pulumi.Input<String> namespaceLogicalId;
  /// The name of the namespace, The name can be up to `63` characters in length.
  final pulumi.Input<String> namespaceName;

  /// Creates a new [NamespaceArgs].
  /// [debugEnable] Specifies whether to enable remote debugging.
  /// [description] The description of the namespace, The description can be up to `128` characters in length.
  /// [namespaceLogicalId] The ID of the namespace.
  /// [namespaceName] The name of the namespace, The name can be up to `63` characters in length.
  NamespaceArgs({
    this.debugEnable,
    this.description,
    required this.namespaceLogicalId,
    required this.namespaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'debugEnable': ?debugEnable,
      'description': ?description,
      'namespaceLogicalId': namespaceLogicalId,
      'namespaceName': namespaceName,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      debugEnable: (() { final guardedValue = map['debugEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceLogicalId: pulumi.Input.fromValue(map['namespaceLogicalId'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
    );
  }
}

