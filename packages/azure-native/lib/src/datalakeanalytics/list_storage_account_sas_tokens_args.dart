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
    required String accountName,
    required String containerName,
    required String resourceGroupName,
    required String storageAccountName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      containerName = pulumi.Input.asInput<String>(containerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageAccountName = pulumi.Input.asInput<String>(storageAccountName);

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
      accountName: map['accountName'] as String,
      containerName: map['containerName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      storageAccountName: map['storageAccountName'] as String,
    );
  }
}

