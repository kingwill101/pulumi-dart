// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This represents the blob storage account location where exports of costs will be delivered. There are two ways to configure the destination. The approach recommended for most customers is to specify the resourceId of the storage account. This requires a one-time registration of the account's subscription with the Microsoft.CostManagementExports resource provider in order to give Cost Management services access to the storage. When creating an export in the Azure portal this registration is performed automatically but API users may need to register the subscription explicitly (for more information see https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-manager-supported-services ). Another way to configure the destination is available ONLY to Partners with a Microsoft Partner Agreement plan who are global admins of their billing account. These Partners, instead of specifying the resourceId of a storage account, can specify the storage account name along with a SAS token for the account. This allows exports of costs to a storage account in any tenant. The SAS token should be created for the blob service with Service/Container/Object resource types and with Read/Write/Delete/List/Add/Create permissions (for more information see https://docs.microsoft.com/en-us/azure/cost-management-billing/costs/export-cost-data-storage-account-sas-key ).
class ExportDeliveryDestinationResponse {
  /// The name of the container where exports will be uploaded. If the container does not exist it will be created.
  final pulumi.Input<String> container;
  /// The resource id of the storage account where exports will be delivered. This is not required if a sasToken and storageAccount are specified.
  final pulumi.Input<String>? resourceId;
  /// The name of the directory where exports will be uploaded.
  final pulumi.Input<String>? rootFolderPath;
  /// A SAS token for the storage account. For a restricted set of Azure customers this together with storageAccount can be specified instead of resourceId. Note: the value returned by the API for this property will always be obfuscated. Returning this same obfuscated value will not result in the SAS token being updated. To update this value a new SAS token must be specified.
  final pulumi.Input<String>? sasToken;
  /// The storage account where exports will be uploaded. For a restricted set of Azure customers this together with sasToken can be specified instead of resourceId.
  final pulumi.Input<String>? storageAccount;

  /// Creates a new [ExportDeliveryDestinationResponse].
  /// [container] The name of the container where exports will be uploaded. If the container does not exist it will be created.
  /// [resourceId] The resource id of the storage account where exports will be delivered. This is not required if a sasToken and storageAccount are specified.
  /// [rootFolderPath] The name of the directory where exports will be uploaded.
  /// [sasToken] A SAS token for the storage account. For a restricted set of Azure customers this together with storageAccount can be specified instead of resourceId. Note: the value returned by the API for this property will always be obfuscated. Returning this same obfuscated value will not result in the SAS token being updated. To update this value a new SAS token must be specified.
  /// [storageAccount] The storage account where exports will be uploaded. For a restricted set of Azure customers this together with sasToken can be specified instead of resourceId.
  const ExportDeliveryDestinationResponse({
    required this.container,
    this.resourceId,
    this.rootFolderPath,
    this.sasToken,
    this.storageAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': container,
      'resourceId': ?resourceId,
      'rootFolderPath': ?rootFolderPath,
      'sasToken': ?sasToken,
      'storageAccount': ?storageAccount,
    };
  }

  factory ExportDeliveryDestinationResponse.fromMap(Map<String, dynamic> map) {
    return ExportDeliveryDestinationResponse(
      container: pulumi.Input.fromValue(map['container'] as String),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootFolderPath: (() { final guardedValue = map['rootFolderPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sasToken: (() { final guardedValue = map['sasToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccount: (() { final guardedValue = map['storageAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
