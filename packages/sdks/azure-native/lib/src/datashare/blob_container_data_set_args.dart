// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_blob_container_data_set_args_doc}
/// The set of arguments for BlobContainerDataSet.
/// {@endtemplate}
/// {@macro pulumi_datashare_blob_container_data_set_args_doc}
class BlobContainerDataSetArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// BLOB Container name.
  final pulumi.Input<String> containerName;
  /// The name of the dataSet.
  final pulumi.Input<String>? dataSetName;
  /// Kind of data set.
  /// Expected value is 'Container'.
  final pulumi.Input<String> kind;
  /// Resource group of storage account
  final pulumi.Input<String> resourceGroup;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share to add the data set to.
  final pulumi.Input<String> shareName;
  /// Storage account name of the source data set
  final pulumi.Input<String> storageAccountName;
  /// Subscription id of storage account
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [BlobContainerDataSetArgs].
  /// [accountName] The name of the share account.
  /// [containerName] BLOB Container name.
  /// [dataSetName] The name of the dataSet.
  /// [kind] Kind of data set.
  /// [resourceGroup] Resource group of storage account
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share to add the data set to.
  /// [storageAccountName] Storage account name of the source data set
  /// [subscriptionId] Subscription id of storage account
  BlobContainerDataSetArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> containerName,
    pulumi.Output<String>? dataSetName,
    required pulumi.Output<String> kind,
    required pulumi.Output<String> resourceGroup,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> shareName,
    required pulumi.Output<String> storageAccountName,
    required pulumi.Output<String> subscriptionId,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      containerName = pulumi.Input.asInput<String>(containerName),
      dataSetName = pulumi.Input.asOptionalInput<String>(dataSetName),
      kind = pulumi.Input.asInput<String>(kind),
      resourceGroup = pulumi.Input.asInput<String>(resourceGroup),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareName = pulumi.Input.asInput<String>(shareName),
      storageAccountName = pulumi.Input.asInput<String>(storageAccountName),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'containerName': containerName,
      'dataSetName': ?dataSetName,
      'kind': kind,
      'resourceGroup': resourceGroup,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
      'storageAccountName': storageAccountName,
      'subscriptionId': subscriptionId,
    };
  }

  factory BlobContainerDataSetArgs.fromMap(Map<String, dynamic> map) {
    return BlobContainerDataSetArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      containerName: pulumi.Output.create<String>(map['containerName'] as String),
      dataSetName: map['dataSetName'] == null ? null : pulumi.Output.create<String>(map['dataSetName'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      resourceGroup: pulumi.Output.create<String>(map['resourceGroup'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      shareName: pulumi.Output.create<String>(map['shareName'] as String),
      storageAccountName: pulumi.Output.create<String>(map['storageAccountName'] as String),
      subscriptionId: pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

