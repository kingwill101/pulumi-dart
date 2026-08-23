// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'k8s_active_directory_response_connector.dart';

/// The kubernetes active directory information.
class K8sActiveDirectoryResponse {
  /// Account name for AAD
  final pulumi.Input<String>? accountName;
  final pulumi.Input<K8sActiveDirectoryResponseConnector>? connector;
  /// An array of encryption types
  final pulumi.Input<List<String>>? encryptionTypes;
  /// Keytab secret used to authenticate with Active Directory.
  final pulumi.Input<String>? keytabSecret;

  /// Creates a new [K8sActiveDirectoryResponse].
  /// [accountName] Account name for AAD
  /// [connector] Optional.
  /// [encryptionTypes] An array of encryption types
  /// [keytabSecret] Keytab secret used to authenticate with Active Directory.
  const K8sActiveDirectoryResponse({
    this.accountName,
    this.connector,
    this.encryptionTypes,
    this.keytabSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'connector': ?pulumi.Input.mapOptionalInputValue<K8sActiveDirectoryResponseConnector, Map<String, dynamic>>(connector, (value) => value.toMap()),
      'encryptionTypes': ?encryptionTypes,
      'keytabSecret': ?keytabSecret,
    };
  }

  factory K8sActiveDirectoryResponse.fromMap(Map<String, dynamic> map) {
    return K8sActiveDirectoryResponse(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connector: (() { final guardedValue = map['connector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(K8sActiveDirectoryResponseConnector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryptionTypes: (() { final guardedValue = map['encryptionTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      keytabSecret: (() { final guardedValue = map['keytabSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
