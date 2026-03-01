// ignore_for_file: unused_element, unnecessary_cast


/// Azure file share profile for hydration of application folders not mounted on
/// the container file system.
class AzureFileShareHydrationProfile {
  /// Gets or sets the cloud directory path of the directory on azure file share.
  final String? azureFileShareDirPath;
  /// Gets or sets the name of the azure file share.
  final String? azureFileShareName;
  /// Gets or sets the name of the azure file share resource group.
  final String? azureFileShareResourceGroup;
  /// Gets or sets the name of the azure file share storage account.
  final String? azureFileShareStorageAccount;
  /// Gets or sets the subscription id of the azure file share.
  final String? azureFileShareSubscriptionId;

  /// Creates a new [AzureFileShareHydrationProfile].
  /// [azureFileShareDirPath] Gets or sets the cloud directory path of the directory on azure file share.
  /// [azureFileShareName] Gets or sets the name of the azure file share.
  /// [azureFileShareResourceGroup] Gets or sets the name of the azure file share resource group.
  /// [azureFileShareStorageAccount] Gets or sets the name of the azure file share storage account.
  /// [azureFileShareSubscriptionId] Gets or sets the subscription id of the azure file share.
  AzureFileShareHydrationProfile({
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

  factory AzureFileShareHydrationProfile.fromMap(Map<String, dynamic> map) {
    return AzureFileShareHydrationProfile(
      azureFileShareDirPath: map['azureFileShareDirPath'] == null ? null : map['azureFileShareDirPath'] as String,
      azureFileShareName: map['azureFileShareName'] == null ? null : map['azureFileShareName'] as String,
      azureFileShareResourceGroup: map['azureFileShareResourceGroup'] == null ? null : map['azureFileShareResourceGroup'] as String,
      azureFileShareStorageAccount: map['azureFileShareStorageAccount'] == null ? null : map['azureFileShareStorageAccount'] as String,
      azureFileShareSubscriptionId: map['azureFileShareSubscriptionId'] == null ? null : map['azureFileShareSubscriptionId'] as String,
    );
  }
}

