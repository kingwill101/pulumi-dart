// ignore_for_file: unused_element, unnecessary_cast

import 'k8s_active_directory_response_connector.dart';

/// The kubernetes active directory information.
class K8sActiveDirectoryResponse {
  /// Account name for AAD
  final String? accountName;
  final K8sActiveDirectoryResponseConnector? connector;
  /// An array of encryption types
  final List<String>? encryptionTypes;
  /// Keytab secret used to authenticate with Active Directory.
  final String? keytabSecret;

  /// Creates a new [K8sActiveDirectoryResponse].
  /// [accountName] Account name for AAD
  /// [connector] Optional.
  /// [encryptionTypes] An array of encryption types
  /// [keytabSecret] Keytab secret used to authenticate with Active Directory.
  K8sActiveDirectoryResponse({
    this.accountName,
    this.connector,
    this.encryptionTypes,
    this.keytabSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'connector': ?connector == null ? null : connector!.toMap(),
      'encryptionTypes': ?encryptionTypes,
      'keytabSecret': ?keytabSecret,
    };
  }

  factory K8sActiveDirectoryResponse.fromMap(Map<String, dynamic> map) {
    return K8sActiveDirectoryResponse(
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
      connector: map['connector'] == null ? null : K8sActiveDirectoryResponseConnector.fromMap((map['connector'] as Map).cast<String, dynamic>()),
      encryptionTypes: map['encryptionTypes'] == null ? null : (map['encryptionTypes'] as List).cast<String>(),
      keytabSecret: map['keytabSecret'] == null ? null : map['keytabSecret'] as String,
    );
  }
}

