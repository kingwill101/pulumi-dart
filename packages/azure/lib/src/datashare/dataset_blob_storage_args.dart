// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_blob_storage_storage_account.dart';

/// {@template pulumi_datashare_dataset_blob_storage_dataset_blob_storage_args_doc}
/// The set of arguments for DatasetBlobStorage.
/// {@endtemplate}
/// {@macro pulumi_datashare_dataset_blob_storage_dataset_blob_storage_args_doc}
class DatasetBlobStorageArgs {
  /// The name of the storage account container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
  final pulumi.Input<String> containerName;
  /// The ID of the Data Share in which this Data Share Blob Storage Dataset should be created. Changing this forces a new Data Share Blob Storage Dataset to be created.
  final pulumi.Input<String> dataShareId;
  /// The path of the file in the storage container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
  final pulumi.Input<String>? filePath;
  /// The path of the folder in the storage container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
  final pulumi.Input<String>? folderPath;
  /// The name which should be used for this Data Share Blob Storage Dataset. Changing this forces a new Data Share Blob Storage Dataset to be created.
  final pulumi.Input<String>? name;
  /// A `storage_account` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<DatasetBlobStorageStorageAccount> storageAccount;

  /// Creates a new [DatasetBlobStorageArgs].
  /// [containerName] The name of the storage account container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
  /// [dataShareId] The ID of the Data Share in which this Data Share Blob Storage Dataset should be created. Changing this forces a new Data Share Blob Storage Dataset to be created.
  /// [filePath] The path of the file in the storage container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
  /// [folderPath] The path of the folder in the storage container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
  /// [name] The name which should be used for this Data Share Blob Storage Dataset. Changing this forces a new Data Share Blob Storage Dataset to be created.
  /// [storageAccount] A `storage_account` block as defined below. Changing this forces a new resource to be created.
  DatasetBlobStorageArgs({
    required String containerName,
    required String dataShareId,
    String? filePath,
    String? folderPath,
    String? name,
    required DatasetBlobStorageStorageAccount storageAccount,
  }) :
      containerName = pulumi.Input.asInput<String>(containerName),
      dataShareId = pulumi.Input.asInput<String>(dataShareId),
      filePath = pulumi.Input.asOptionalInput<String>(filePath),
      folderPath = pulumi.Input.asOptionalInput<String>(folderPath),
      name = pulumi.Input.asOptionalInput<String>(name),
      storageAccount = pulumi.Input.asInput<DatasetBlobStorageStorageAccount>(storageAccount);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'dataShareId': dataShareId,
      'filePath': ?filePath,
      'folderPath': ?folderPath,
      'name': ?name,
      'storageAccount': pulumi.Input.mapInputValue<DatasetBlobStorageStorageAccount, Map<String, dynamic>>(storageAccount, (value) => value.toMap()),
    };
  }

  factory DatasetBlobStorageArgs.fromMap(Map<String, dynamic> map) {
    return DatasetBlobStorageArgs(
      containerName: map['containerName'] as String,
      dataShareId: map['dataShareId'] as String,
      filePath: map['filePath'] == null ? null : map['filePath'] as String,
      folderPath: map['folderPath'] == null ? null : map['folderPath'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      storageAccount: DatasetBlobStorageStorageAccount.fromMap((map['storageAccount'] as Map).cast<String, dynamic>()),
    );
  }
}

