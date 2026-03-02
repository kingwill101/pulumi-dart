// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_account_key_vault_status_args_doc}
/// Arguments for getAccountKeyVaultStatus.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_account_key_vault_status_args_doc}
class GetAccountKeyVaultStatusArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAccountKeyVaultStatusArgs].
  /// [accountName] The name of the NetApp account
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAccountKeyVaultStatusArgs({
    required this.accountName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccountKeyVaultStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountKeyVaultStatusArgs(
      accountName: (map['accountName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

