// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_properties.dart';

/// {@template pulumi_keyvault_secret_args_doc}
/// The set of arguments for Secret.
/// {@endtemplate}
/// {@macro pulumi_keyvault_secret_args_doc}
class SecretArgs {
  /// Properties of the secret
  final pulumi.Input<SecretProperties> properties;
  /// The name of the Resource Group to which the vault belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the secret. The value you provide may be copied globally for the purpose of running the service. The value provided should not include personally identifiable or sensitive information.
  final pulumi.Input<String>? secretName;
  /// The tags that will be assigned to the secret.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of the vault
  final pulumi.Input<String> vaultName;

  /// Creates a new [SecretArgs].
  /// [properties] Properties of the secret
  /// [resourceGroupName] The name of the Resource Group to which the vault belongs.
  /// [secretName] Name of the secret. The value you provide may be copied globally for the purpose of running the service. The value provided should not include personally identifiable or sensitive information.
  /// [tags] The tags that will be assigned to the secret.
  /// [vaultName] Name of the vault
  SecretArgs({
    required SecretProperties properties,
    required String resourceGroupName,
    String? secretName,
    Map<String, String>? tags,
    required String vaultName,
  }) :
      properties = pulumi.Input.asInput<SecretProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      secretName = pulumi.Input.asOptionalInput<String>(secretName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': pulumi.Input.mapInputValue<SecretProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'secretName': ?secretName,
      'tags': ?tags,
      'vaultName': vaultName,
    };
  }

  factory SecretArgs.fromMap(Map<String, dynamic> map) {
    return SecretArgs(
      properties: SecretProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vaultName: map['vaultName'] as String,
    );
  }
}

