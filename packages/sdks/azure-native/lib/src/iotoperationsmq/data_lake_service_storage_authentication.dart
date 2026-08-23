// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_authentication.dart';

/// DataLake Service Storage authentication details. NOTE - Enum only one method is supported.
class DataLakeServiceStorageAuthentication {
  /// Access token secret name.
  final pulumi.Input<String>? accessTokenSecretName;
  /// Configuration for managed identity authentication.
  final pulumi.Input<ManagedIdentityAuthentication>? systemAssignedManagedIdentity;

  /// Creates a new [DataLakeServiceStorageAuthentication].
  /// [accessTokenSecretName] Access token secret name.
  /// [systemAssignedManagedIdentity] Configuration for managed identity authentication.
  const DataLakeServiceStorageAuthentication({
    this.accessTokenSecretName,
    this.systemAssignedManagedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTokenSecretName': ?accessTokenSecretName,
      'systemAssignedManagedIdentity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentityAuthentication, Map<String, dynamic>>(systemAssignedManagedIdentity, (value) => value.toMap()),
    };
  }

  factory DataLakeServiceStorageAuthentication.fromMap(Map<String, dynamic> map) {
    return DataLakeServiceStorageAuthentication(
      accessTokenSecretName: (() { final guardedValue = map['accessTokenSecretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemAssignedManagedIdentity: (() { final guardedValue = map['systemAssignedManagedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedIdentityAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
