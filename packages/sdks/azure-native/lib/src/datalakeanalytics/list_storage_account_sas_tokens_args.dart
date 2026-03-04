// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalakeanalytics_list_storage_account_sas_tokens_args_doc}
/// Arguments for listStorageAccountSasTokens.
/// {@endtemplate}
/// {@macro pulumi_datalakeanalytics_list_storage_account_sas_tokens_args_doc}
class ListStorageAccountSasTokensArgs {
  /// The name of the Data Lake Analytics account.
  final pulumi.Input<String> accountName;

  /// The name of the Azure storage container for which the SAS token is being requested.
  final pulumi.Input<String> containerName;

  /// The name of the Azure resource group.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the Azure storage account for which the SAS token is being requested.
  final pulumi.Input<String> storageAccountName;

  /// Creates a new [ListStorageAccountSasTokensArgs].
  /// [accountName] The name of the Data Lake Analytics account.
  /// [containerName] The name of the Azure storage container for which the SAS token is being requested.
  /// [resourceGroupName] The name of the Azure resource group.
  /// [storageAccountName] The name of the Azure storage account for which the SAS token is being requested.
  ListStorageAccountSasTokensArgs({
    required this.accountName,
    required this.containerName,
    required this.resourceGroupName,
    required this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'containerName': containerName,
      'resourceGroupName': resourceGroupName,
      'storageAccountName': storageAccountName,
    };
  }

  factory ListStorageAccountSasTokensArgs.fromMap(Map<String, dynamic> map) {
    return ListStorageAccountSasTokensArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      storageAccountName: pulumi.Input.fromValue(
        map['storageAccountName'] as String,
      ),
    );
  }
}
