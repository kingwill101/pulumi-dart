// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getStorageAccount.
class GetStorageAccountResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// BlobEndpoint of Storage Account
  final String? blobEndpoint;
  /// The Container Count. Present only for Storage Accounts with DataPolicy set to Cloud.
  final int? containerCount;
  /// Data policy of the storage Account.
  final String? dataPolicy;
  /// Description for the storage Account.
  final String? description;
  /// The path ID that uniquely identifies the object.
  final String? id;
  /// The object name.
  final String? name;
  /// Storage Account Credential Id
  final String? storageAccountCredentialId;
  /// Current status of the storage account
  final String? storageAccountStatus;
  /// Metadata pertaining to creation and last modification of StorageAccount
  final SystemDataResponse? systemData;
  /// The hierarchical type of the object.
  final String? type;

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
  const GetStorageAccountResult({
    this.azureApiVersion,
    this.blobEndpoint,
    this.containerCount,
    this.dataPolicy,
    this.description,
    this.id,
    this.name,
    this.storageAccountCredentialId,
    this.storageAccountStatus,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'blobEndpoint': ?blobEndpoint,
      'containerCount': ?containerCount,
      'dataPolicy': ?dataPolicy,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'storageAccountCredentialId': ?storageAccountCredentialId,
      'storageAccountStatus': ?storageAccountStatus,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetStorageAccountResult.fromMap(Map<String, dynamic> map) {
    return GetStorageAccountResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      blobEndpoint: (() { final guardedValue = map['blobEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      containerCount: (() { final guardedValue = map['containerCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      dataPolicy: (() { final guardedValue = map['dataPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountCredentialId: (() { final guardedValue = map['storageAccountCredentialId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountStatus: (() { final guardedValue = map['storageAccountStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
