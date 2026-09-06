// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'k8s_active_directory_connector.dart';

/// The kubernetes active directory information.
class K8sActiveDirectory {
  /// Account name for AAD
  final pulumi.Input<String?>? accountName;
  final pulumi.Input<K8sActiveDirectoryConnector?>? connector;
  /// An array of encryption types
  final pulumi.Input<List<String>?>? encryptionTypes;
  /// Keytab secret used to authenticate with Active Directory.
  final pulumi.Input<String?>? keytabSecret;

  /// Creates a new [K8sActiveDirectory].
  /// [accountName] Account name for AAD
  /// [connector] Optional.
  /// [encryptionTypes] An array of encryption types
  /// [keytabSecret] Keytab secret used to authenticate with Active Directory.
  const K8sActiveDirectory({
    this.accountName,
    this.connector,
    this.encryptionTypes,
    this.keytabSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'connector': ?pulumi.Input.mapOptionalInputValue<K8sActiveDirectoryConnector, Map<String, dynamic>>(connector, (value) => value.toMap()),
      'encryptionTypes': ?encryptionTypes,
      'keytabSecret': ?keytabSecret,
    };
  }

  factory K8sActiveDirectory.fromMap(Map<String, dynamic> map) {
    return K8sActiveDirectory(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connector: (() { final guardedValue = map['connector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(K8sActiveDirectoryConnector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryptionTypes: (() { final guardedValue = map['encryptionTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      keytabSecret: (() { final guardedValue = map['keytabSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
