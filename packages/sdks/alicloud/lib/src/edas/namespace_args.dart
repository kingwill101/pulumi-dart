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
    pulumi.Output<bool>? debugEnable,
    pulumi.Output<String>? description,
    required pulumi.Output<String> namespaceLogicalId,
    required pulumi.Output<String> namespaceName,
  }) :
      debugEnable = pulumi.Input.asOptionalInput<bool>(debugEnable),
      description = pulumi.Input.asOptionalInput<String>(description),
      namespaceLogicalId = pulumi.Input.asInput<String>(namespaceLogicalId),
      namespaceName = pulumi.Input.asInput<String>(namespaceName);

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
      debugEnable: map['debugEnable'] == null ? null : pulumi.Output.create<bool>(map['debugEnable'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      namespaceLogicalId: pulumi.Output.create<String>(map['namespaceLogicalId'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
    );
  }
}

