// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure file share profile for hydration of application folders not mounted on
/// the container file system.
class AzureFileShareHydrationProfileResponse {
  /// Gets or sets the cloud directory path of the directory on azure file share.
  final pulumi.Input<String>? azureFileShareDirPath;
  /// Gets or sets the name of the azure file share.
  final pulumi.Input<String>? azureFileShareName;
  /// Gets or sets the name of the azure file share resource group.
  final pulumi.Input<String>? azureFileShareResourceGroup;
  /// Gets or sets the name of the azure file share storage account.
  final pulumi.Input<String>? azureFileShareStorageAccount;
  /// Gets or sets the subscription id of the azure file share.
  final pulumi.Input<String>? azureFileShareSubscriptionId;

  /// Creates a new [AzureFileShareHydrationProfileResponse].
  /// [azureFileShareDirPath] Gets or sets the cloud directory path of the directory on azure file share.
  /// [azureFileShareName] Gets or sets the name of the azure file share.
  /// [azureFileShareResourceGroup] Gets or sets the name of the azure file share resource group.
  /// [azureFileShareStorageAccount] Gets or sets the name of the azure file share storage account.
  /// [azureFileShareSubscriptionId] Gets or sets the subscription id of the azure file share.
  AzureFileShareHydrationProfileResponse({
    this.azureFileShareDirPath,
    this.azureFileShareName,
    this.azureFileShareResourceGroup,
    this.azureFileShareStorageAccount,
    this.azureFileShareSubscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFileShareDirPath': ?azureFileShareDirPath,
      'azureFileShareName': ?azureFileShareName,
      'azureFileShareResourceGroup': ?azureFileShareResourceGroup,
      'azureFileShareStorageAccount': ?azureFileShareStorageAccount,
      'azureFileShareSubscriptionId': ?azureFileShareSubscriptionId,
    };
  }

  factory AzureFileShareHydrationProfileResponse.fromMap(Map<String, dynamic> map) {
    return AzureFileShareHydrationProfileResponse(
      azureFileShareDirPath: map['azureFileShareDirPath'] == null ? null : (map['azureFileShareDirPath']! as String).input(),
      azureFileShareName: map['azureFileShareName'] == null ? null : (map['azureFileShareName']! as String).input(),
      azureFileShareResourceGroup: map['azureFileShareResourceGroup'] == null ? null : (map['azureFileShareResourceGroup']! as String).input(),
      azureFileShareStorageAccount: map['azureFileShareStorageAccount'] == null ? null : (map['azureFileShareStorageAccount']! as String).input(),
      azureFileShareSubscriptionId: map['azureFileShareSubscriptionId'] == null ? null : (map['azureFileShareSubscriptionId']! as String).input(),
    );
  }
}

