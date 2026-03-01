// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datareplication_get_vault_args_doc}
/// Arguments for getVault.
/// {@endtemplate}
/// {@macro pulumi_datareplication_get_vault_args_doc}
class GetVaultArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The vault name.
  final pulumi.Input<String> vaultName;

  /// Creates a new [GetVaultArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vaultName] The vault name.
  GetVaultArgs({
    required String resourceGroupName,
    required String vaultName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory GetVaultArgs.fromMap(Map<String, dynamic> map) {
    return GetVaultArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      vaultName: map['vaultName'] as String,
    );
  }
}

