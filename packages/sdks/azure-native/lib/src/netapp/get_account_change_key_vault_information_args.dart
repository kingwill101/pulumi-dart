// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_account_change_key_vault_information_args_doc}
/// Arguments for getAccountChangeKeyVaultInformation.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_account_change_key_vault_information_args_doc}
class GetAccountChangeKeyVaultInformationArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAccountChangeKeyVaultInformationArgs].
  /// [accountName] The name of the NetApp account
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAccountChangeKeyVaultInformationArgs({
    required this.accountName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccountChangeKeyVaultInformationArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAccountChangeKeyVaultInformationArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
