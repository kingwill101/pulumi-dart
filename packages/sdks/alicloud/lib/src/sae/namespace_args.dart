// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sae_namespace_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_sae_namespace_namespace_args_doc}
class NamespaceArgs {
  /// Specifies whether to enable the SAE built-in registry. If you do not use the built-in registry, you can set `enable_micro_registration` to `false` to accelerate the creation of the namespace. Default value: `true`. Valid values:
  final pulumi.Input<bool>? enableMicroRegistration;
  /// The Description of Namespace.
  final pulumi.Input<String>? namespaceDescription;
  /// The ID of the Namespace. It can contain 2 to 32 lowercase characters. The value is in format `{RegionId}:{namespace}`.
  final pulumi.Input<String>? namespaceId;
  /// The Name of Namespace.
  final pulumi.Input<String> namespaceName;
  /// The short ID of the Namespace. You do not need to specify a region ID. The value of `namespace_short_id` can be up to 20 characters in length and can contain only lowercase letters and digits.
  final pulumi.Input<String>? namespaceShortId;

  /// Creates a new [NamespaceArgs].
  /// [enableMicroRegistration] Specifies whether to enable the SAE built-in registry. If you do not use the built-in registry, you can set `enable_micro_registration` to `false` to accelerate the creation of the namespace. Default value: `true`. Valid values:
  /// [namespaceDescription] The Description of Namespace.
  /// [namespaceId] The ID of the Namespace. It can contain 2 to 32 lowercase characters. The value is in format `{RegionId}:{namespace}`.
  /// [namespaceName] The Name of Namespace.
  /// [namespaceShortId] The short ID of the Namespace. You do not need to specify a region ID. The value of `namespace_short_id` can be up to 20 characters in length and can contain only lowercase letters and digits.
  NamespaceArgs({
    pulumi.Output<bool>? enableMicroRegistration,
    pulumi.Output<String>? namespaceDescription,
    pulumi.Output<String>? namespaceId,
    required pulumi.Output<String> namespaceName,
    pulumi.Output<String>? namespaceShortId,
  }) :
      enableMicroRegistration = pulumi.Input.asOptionalInput<bool>(enableMicroRegistration),
      namespaceDescription = pulumi.Input.asOptionalInput<String>(namespaceDescription),
      namespaceId = pulumi.Input.asOptionalInput<String>(namespaceId),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      namespaceShortId = pulumi.Input.asOptionalInput<String>(namespaceShortId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMicroRegistration': ?enableMicroRegistration,
      'namespaceDescription': ?namespaceDescription,
      'namespaceId': ?namespaceId,
      'namespaceName': namespaceName,
      'namespaceShortId': ?namespaceShortId,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      enableMicroRegistration: map['enableMicroRegistration'] == null ? null : pulumi.Output.create<bool>(map['enableMicroRegistration'] as bool),
      namespaceDescription: map['namespaceDescription'] == null ? null : pulumi.Output.create<String>(map['namespaceDescription'] as String),
      namespaceId: map['namespaceId'] == null ? null : pulumi.Output.create<String>(map['namespaceId'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      namespaceShortId: map['namespaceShortId'] == null ? null : pulumi.Output.create<String>(map['namespaceShortId'] as String),
    );
  }
}

