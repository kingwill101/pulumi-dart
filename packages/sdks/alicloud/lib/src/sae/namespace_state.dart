// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Namespace resources.
class NamespaceState {
  /// Specifies whether to enable the SAE built-in registry. If you do not use the built-in registry, you can set `enable_micro_registration` to `false` to accelerate the creation of the namespace. Default value: `true`. Valid values:
  final pulumi.Input<bool>? enableMicroRegistration;
  /// The Description of Namespace.
  final pulumi.Input<String>? namespaceDescription;
  /// The ID of the Namespace. It can contain 2 to 32 lowercase characters. The value is in format `{RegionId}:{namespace}`.
  final pulumi.Input<String>? namespaceId;
  /// The Name of Namespace.
  final pulumi.Input<String>? namespaceName;
  /// The short ID of the Namespace. You do not need to specify a region ID. The value of `namespace_short_id` can be up to 20 characters in length and can contain only lowercase letters and digits.
  final pulumi.Input<String>? namespaceShortId;

  /// Creates a new [NamespaceState].
  /// [enableMicroRegistration] Specifies whether to enable the SAE built-in registry. If you do not use the built-in registry, you can set `enable_micro_registration` to `false` to accelerate the creation of the namespace. Default value: `true`. Valid values:
  /// [namespaceDescription] The Description of Namespace.
  /// [namespaceId] The ID of the Namespace. It can contain 2 to 32 lowercase characters. The value is in format `{RegionId}:{namespace}`.
  /// [namespaceName] The Name of Namespace.
  /// [namespaceShortId] The short ID of the Namespace. You do not need to specify a region ID. The value of `namespace_short_id` can be up to 20 characters in length and can contain only lowercase letters and digits.
  NamespaceState({
    this.enableMicroRegistration,
    this.namespaceDescription,
    this.namespaceId,
    this.namespaceName,
    this.namespaceShortId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMicroRegistration': ?enableMicroRegistration,
      'namespaceDescription': ?namespaceDescription,
      'namespaceId': ?namespaceId,
      'namespaceName': ?namespaceName,
      'namespaceShortId': ?namespaceShortId,
    };
  }

  factory NamespaceState.fromMap(Map<String, dynamic> map) {
    return NamespaceState(
      enableMicroRegistration: (() { final guardedValue = map['enableMicroRegistration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      namespaceDescription: (() { final guardedValue = map['namespaceDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceShortId: (() { final guardedValue = map['namespaceShortId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

