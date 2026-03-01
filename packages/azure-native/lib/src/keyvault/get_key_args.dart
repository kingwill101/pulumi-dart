// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_get_key_args_doc}
/// Arguments for getKey.
/// {@endtemplate}
/// {@macro pulumi_keyvault_get_key_args_doc}
class GetKeyArgs {
  /// The name of the key to be retrieved.
  final pulumi.Input<String> keyName;
  /// The name of the resource group which contains the specified key vault.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the vault which contains the key to be retrieved.
  final pulumi.Input<String> vaultName;

  /// Creates a new [GetKeyArgs].
  /// [keyName] The name of the key to be retrieved.
  /// [resourceGroupName] The name of the resource group which contains the specified key vault.
  /// [vaultName] The name of the vault which contains the key to be retrieved.
  GetKeyArgs({
    required String keyName,
    required String resourceGroupName,
    required String vaultName,
  }) :
      keyName = pulumi.Input.asInput<String>(keyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory GetKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyArgs(
      keyName: map['keyName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      vaultName: map['vaultName'] as String,
    );
  }
}

