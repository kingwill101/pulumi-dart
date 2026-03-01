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
    bool? autoCreate,
    String? defaultVisibility,
    required String instanceId,
    String? name,
  }) :
      autoCreate = pulumi.Input.asOptionalInput<bool>(autoCreate),
      defaultVisibility = pulumi.Input.asOptionalInput<String>(defaultVisibility),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name);

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
      autoCreate: map['autoCreate'] == null ? null : map['autoCreate'] as bool,
      defaultVisibility: map['defaultVisibility'] == null ? null : map['defaultVisibility'] as String,
      instanceId: map['instanceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

