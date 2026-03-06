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
  const NamespaceArgs({
    this.enableMicroRegistration,
    this.namespaceDescription,
    this.namespaceId,
    required this.namespaceName,
    this.namespaceShortId,
  });

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
      enableMicroRegistration: (() { final guardedValue = map['enableMicroRegistration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      namespaceDescription: (() { final guardedValue = map['namespaceDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      namespaceShortId: (() { final guardedValue = map['namespaceShortId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

