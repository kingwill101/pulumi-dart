// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_adlsgen2_file_system_data_set_mapping_args_doc}
/// The set of arguments for ADLSGen2FileSystemDataSetMapping.
/// {@endtemplate}
/// {@macro pulumi_datashare_adlsgen2_file_system_data_set_mapping_args_doc}
class ADLSGen2FileSystemDataSetMappingArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The id of the source data set.
  final pulumi.Input<String> dataSetId;
  /// The name of the data set mapping to be created.
  final pulumi.Input<String>? dataSetMappingName;
  /// The file system name.
  final pulumi.Input<String> fileSystem;
  /// Kind of data set mapping.
  /// Expected value is 'AdlsGen2FileSystem'.
  final pulumi.Input<String> kind;
  /// Resource group of storage account.
  final pulumi.Input<String> resourceGroup;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share subscription which will hold the data set sink.
  final pulumi.Input<String> shareSubscriptionName;
  /// Storage account name of the source data set.
  final pulumi.Input<String> storageAccountName;
  /// Subscription id of storage account.
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [ADLSGen2FileSystemDataSetMappingArgs].
  /// [accountName] The name of the share account.
  /// [dataSetId] The id of the source data set.
  /// [dataSetMappingName] The name of the data set mapping to be created.
  /// [fileSystem] The file system name.
  /// [kind] Kind of data set mapping.
  /// [resourceGroup] Resource group of storage account.
  /// [resourceGroupName] The resource group name.
  /// [shareSubscriptionName] The name of the share subscription which will hold the data set sink.
  /// [storageAccountName] Storage account name of the source data set.
  /// [subscriptionId] Subscription id of storage account.
  ADLSGen2FileSystemDataSetMappingArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> dataSetId,
    pulumi.Output<String>? dataSetMappingName,
    required pulumi.Output<String> fileSystem,
    required pulumi.Output<String> kind,
    required pulumi.Output<String> resourceGroup,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> shareSubscriptionName,
    required pulumi.Output<String> storageAccountName,
    required pulumi.Output<String> subscriptionId,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      dataSetId = pulumi.Input.asInput<String>(dataSetId),
      dataSetMappingName = pulumi.Input.asOptionalInput<String>(dataSetMappingName),
      fileSystem = pulumi.Input.asInput<String>(fileSystem),
      kind = pulumi.Input.asInput<String>(kind),
      resourceGroup = pulumi.Input.asInput<String>(resourceGroup),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareSubscriptionName = pulumi.Input.asInput<String>(shareSubscriptionName),
      storageAccountName = pulumi.Input.asInput<String>(storageAccountName),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dataSetId': dataSetId,
      'dataSetMappingName': ?dataSetMappingName,
      'fileSystem': fileSystem,
      'kind': kind,
      'resourceGroup': resourceGroup,
      'resourceGroupName': resourceGroupName,
      'shareSubscriptionName': shareSubscriptionName,
      'storageAccountName': storageAccountName,
      'subscriptionId': subscriptionId,
    };
  }

  factory ADLSGen2FileSystemDataSetMappingArgs.fromMap(Map<String, dynamic> map) {
    return ADLSGen2FileSystemDataSetMappingArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      dataSetId: pulumi.Output.create<String>(map['dataSetId'] as String),
      dataSetMappingName: map['dataSetMappingName'] == null ? null : pulumi.Output.create<String>(map['dataSetMappingName'] as String),
      fileSystem: pulumi.Output.create<String>(map['fileSystem'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      resourceGroup: pulumi.Output.create<String>(map['resourceGroup'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      shareSubscriptionName: pulumi.Output.create<String>(map['shareSubscriptionName'] as String),
      storageAccountName: pulumi.Output.create<String>(map['storageAccountName'] as String),
      subscriptionId: pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

