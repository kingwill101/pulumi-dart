// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_get_secret_args_doc}
/// Arguments for getSecret.
/// {@endtemplate}
/// {@macro pulumi_keyvault_get_secret_args_doc}
class GetSecretArgs {
  /// The name of the Resource Group to which the vault belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the secret.
  final pulumi.Input<String> secretName;
  /// The name of the vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [GetSecretArgs].
  /// [resourceGroupName] The name of the Resource Group to which the vault belongs.
  /// [secretName] The name of the secret.
  /// [vaultName] The name of the vault.
  GetSecretArgs({
    required this.resourceGroupName,
    required this.secretName,
    required this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'secretName': secretName,
      'vaultName': vaultName,
    };
  }

  factory GetSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
      vaultName: pulumi.Input.fromValue(map['vaultName'] as String),
    );
  }
}

