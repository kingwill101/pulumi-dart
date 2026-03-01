// ignore_for_file: unused_element, unnecessary_cast

import 'k8s_active_directory_connector.dart';

/// The kubernetes active directory information.
class K8sActiveDirectory {
  /// Account name for AAD
  final String? accountName;
  final K8sActiveDirectoryConnector? connector;
  /// An array of encryption types
  final List<String>? encryptionTypes;
  /// Keytab secret used to authenticate with Active Directory.
  final String? keytabSecret;

  /// Creates a new [K8sActiveDirectory].
  /// [accountName] Account name for AAD
  /// [connector] Optional.
  /// [encryptionTypes] An array of encryption types
  /// [keytabSecret] Keytab secret used to authenticate with Active Directory.
  K8sActiveDirectory({
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

  factory K8sActiveDirectory.fromMap(Map<String, dynamic> map) {
    return K8sActiveDirectory(
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
      connector: map['connector'] == null ? null : K8sActiveDirectoryConnector.fromMap((map['connector'] as Map).cast<String, dynamic>()),
      encryptionTypes: map['encryptionTypes'] == null ? null : (map['encryptionTypes'] as List).cast<String>(),
      keytabSecret: map['keytabSecret'] == null ? null : map['keytabSecret'] as String,
    );
  }
}

