// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_registry_enterprise_namespace_registry_enterprise_namespace_args_doc}
/// The set of arguments for RegistryEnterpriseNamespace.
/// {@endtemplate}
/// {@macro pulumi_cs_registry_enterprise_namespace_registry_enterprise_namespace_args_doc}
class RegistryEnterpriseNamespaceArgs {
  /// Specifies whether to automatically create an image repository in the namespace. Default value: `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? autoCreate;
  /// The default type of the repository that is automatically created. Valid values:
  /// - `PUBLIC`: A public repository.
  /// - `PRIVATE`: A private repository.
  final pulumi.Input<String>? defaultVisibility;
  /// The ID of the Container Registry Enterprise Edition instance.
  final pulumi.Input<String> instanceId;
  /// The name of the Container Registry Enterprise Edition Name. It must be `2` to `120` characters in length, and can contain lowercase letters, digits, underscores (_), hyphens (-), and periods (.). It cannot start or end with a delimiter.
  final pulumi.Input<String>? name;

  /// Creates a new [RegistryEnterpriseNamespaceArgs].
  /// [autoCreate] Specifies whether to automatically create an image repository in the namespace. Default value: `false`. Valid values: `true`, `false`.
  /// [defaultVisibility] The default type of the repository that is automatically created. Valid values:
  /// [instanceId] The ID of the Container Registry Enterprise Edition instance.
  /// [name] The name of the Container Registry Enterprise Edition Name. It must be `2` to `120` characters in length, and can contain lowercase letters, digits, underscores (_), hyphens (-), and periods (.). It cannot start or end with a delimiter.
  RegistryEnterpriseNamespaceArgs({
    this.autoCreate,
    this.defaultVisibility,
    required this.instanceId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreate': ?autoCreate,
      'defaultVisibility': ?defaultVisibility,
      'instanceId': instanceId,
      'name': ?name,
    };
  }

  factory RegistryEnterpriseNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return RegistryEnterpriseNamespaceArgs(
      autoCreate: (() { final guardedValue = map['autoCreate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      defaultVisibility: (() { final guardedValue = map['defaultVisibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

