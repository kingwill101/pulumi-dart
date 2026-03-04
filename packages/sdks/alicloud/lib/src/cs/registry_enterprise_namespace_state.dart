// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegistryEnterpriseNamespace resources.
class RegistryEnterpriseNamespaceState {
  /// Specifies whether to automatically create an image repository in the namespace. Default value: `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? autoCreate;

  /// The default type of the repository that is automatically created. Valid values:
  /// - `PUBLIC`: A public repository.
  /// - `PRIVATE`: A private repository.
  final pulumi.Input<String>? defaultVisibility;

  /// The ID of the Container Registry Enterprise Edition instance.
  final pulumi.Input<String>? instanceId;

  /// The name of the Container Registry Enterprise Edition Name. It must be `2` to `120` characters in length, and can contain lowercase letters, digits, underscores (_), hyphens (-), and periods (.). It cannot start or end with a delimiter.
  final pulumi.Input<String>? name;

  /// Creates a new [RegistryEnterpriseNamespaceState].
  /// [autoCreate] Specifies whether to automatically create an image repository in the namespace. Default value: `false`. Valid values: `true`, `false`.
  /// [defaultVisibility] The default type of the repository that is automatically created. Valid values:
  /// [instanceId] The ID of the Container Registry Enterprise Edition instance.
  /// [name] The name of the Container Registry Enterprise Edition Name. It must be `2` to `120` characters in length, and can contain lowercase letters, digits, underscores (_), hyphens (-), and periods (.). It cannot start or end with a delimiter.
  RegistryEnterpriseNamespaceState({
    this.autoCreate,
    this.defaultVisibility,
    this.instanceId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreate': ?autoCreate,
      'defaultVisibility': ?defaultVisibility,
      'instanceId': ?instanceId,
      'name': ?name,
    };
  }

  factory RegistryEnterpriseNamespaceState.fromMap(Map<String, dynamic> map) {
    return RegistryEnterpriseNamespaceState(
      autoCreate: (() {
        final guardedValue = map['autoCreate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      defaultVisibility: (() {
        final guardedValue = map['defaultVisibility'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
