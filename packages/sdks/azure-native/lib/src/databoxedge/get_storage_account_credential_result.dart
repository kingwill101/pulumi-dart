// ignore_for_file: unused_element, unnecessary_cast

import 'asymmetric_encrypted_secret_response.dart';
import 'system_data_response.dart';

/// Result data returned by getStorageAccountCredential.
class GetStorageAccountCredentialResult {
  /// Encrypted storage key.
  final AsymmetricEncryptedSecretResponse? accountKey;
  /// Type of storage accessed on the storage account.
  final String? accountType;
  /// Alias for the storage account.
  final String? alias;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Blob end point for private clouds.
  final String? blobDomainName;
  /// Connection string for the storage account. Use this string if username and account key are not specified.
  final String? connectionString;
  /// The path ID that uniquely identifies the object.
  final String? id;
  /// The object name.
  final String? name;
  /// Signifies whether SSL needs to be enabled or not.
  final String? sslStatus;
  /// Id of the storage account.
  final String? storageAccountId;
  /// Metadata pertaining to creation and last modification of StorageAccountCredential
  final SystemDataResponse? systemData;
  /// The hierarchical type of the object.
  final String? type;
  /// Username for the storage account.
  final String? userName;

  /// Creates a new [GetStorageAccountCredentialResult].
  /// [accountKey] Encrypted storage key.
  /// [accountType] Type of storage accessed on the storage account.
  /// [alias] Alias for the storage account.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [blobDomainName] Blob end point for private clouds.
  /// [connectionString] Connection string for the storage account. Use this string if username and account key are not specified.
  /// [id] The path ID that uniquely identifies the object.
  /// [name] The object name.
  /// [sslStatus] Signifies whether SSL needs to be enabled or not.
  /// [storageAccountId] Id of the storage account.
  /// [systemData] Metadata pertaining to creation and last modification of StorageAccountCredential
  /// [type] The hierarchical type of the object.
  /// [userName] Username for the storage account.
  const GetStorageAccountCredentialResult({
    this.accountKey,
    this.accountType,
    this.alias,
    this.azureApiVersion,
    this.blobDomainName,
    this.connectionString,
    this.id,
    this.name,
    this.sslStatus,
    this.storageAccountId,
    this.systemData,
    this.type,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey?.toMap(),
      'accountType': ?accountType,
      'alias': ?alias,
      'azureApiVersion': ?azureApiVersion,
      'blobDomainName': ?blobDomainName,
      'connectionString': ?connectionString,
      'id': ?id,
      'name': ?name,
      'sslStatus': ?sslStatus,
      'storageAccountId': ?storageAccountId,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'userName': ?userName,
    };
  }

  factory GetStorageAccountCredentialResult.fromMap(Map<String, dynamic> map) {
    return GetStorageAccountCredentialResult(
      accountKey: (() { final guardedValue = map['accountKey']; if (guardedValue == null) return null; return AsymmetricEncryptedSecretResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      accountType: (() { final guardedValue = map['accountType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      blobDomainName: (() { final guardedValue = map['blobDomainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sslStatus: (() { final guardedValue = map['sslStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
