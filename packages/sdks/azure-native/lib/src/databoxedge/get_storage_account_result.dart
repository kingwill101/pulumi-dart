// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getStorageAccount.
class GetStorageAccountResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// BlobEndpoint of Storage Account
  final String blobEndpoint;

  /// The Container Count. Present only for Storage Accounts with DataPolicy set to Cloud.
  final int containerCount;

  /// Data policy of the storage Account.
  final String dataPolicy;

  /// Description for the storage Account.
  final String? description;

  /// The path ID that uniquely identifies the object.
  final String id;

  /// The object name.
  final String name;

  /// Storage Account Credential Id
  final String? storageAccountCredentialId;

  /// Current status of the storage account
  final String? storageAccountStatus;

  /// Metadata pertaining to creation and last modification of StorageAccount
  final SystemDataResponse systemData;

  /// The hierarchical type of the object.
  final String type;

  /// Creates a new [GetStorageAccountResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [blobEndpoint] BlobEndpoint of Storage Account
  /// [containerCount] The Container Count. Present only for Storage Accounts with DataPolicy set to Cloud.
  /// [dataPolicy] Data policy of the storage Account.
  /// [description] Description for the storage Account.
  /// [id] The path ID that uniquely identifies the object.
  /// [name] The object name.
  /// [storageAccountCredentialId] Storage Account Credential Id
  /// [storageAccountStatus] Current status of the storage account
  /// [systemData] Metadata pertaining to creation and last modification of StorageAccount
  /// [type] The hierarchical type of the object.
  GetStorageAccountResult({
    required this.azureApiVersion,
    required this.blobEndpoint,
    required this.containerCount,
    required this.dataPolicy,
    this.description,
    required this.id,
    required this.name,
    this.storageAccountCredentialId,
    this.storageAccountStatus,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'blobEndpoint': blobEndpoint,
      'containerCount': containerCount,
      'dataPolicy': dataPolicy,
      'description': ?description,
      'id': id,
      'name': name,
      'storageAccountCredentialId': ?storageAccountCredentialId,
      'storageAccountStatus': ?storageAccountStatus,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetStorageAccountResult.fromMap(Map<String, dynamic> map) {
    return GetStorageAccountResult(
      azureApiVersion: map['azureApiVersion'] as String,
      blobEndpoint: map['blobEndpoint'] as String,
      containerCount: map['containerCount'] as int,
      dataPolicy: map['dataPolicy'] as String,
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      name: map['name'] as String,
      storageAccountCredentialId: (() {
        final guardedValue = map['storageAccountCredentialId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      storageAccountStatus: (() {
        final guardedValue = map['storageAccountStatus'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
