// ignore_for_file: unused_element, unnecessary_cast

import 'managed_identity_authentication.dart';

/// DataLake Service Storage authentication details. NOTE - Enum only one method is supported.
class DataLakeServiceStorageAuthentication {
  /// Access token secret name.
  final String? accessTokenSecretName;
  /// Configuration for managed identity authentication.
  final ManagedIdentityAuthentication? systemAssignedManagedIdentity;

  /// Creates a new [DataLakeServiceStorageAuthentication].
  /// [accessTokenSecretName] Access token secret name.
  /// [systemAssignedManagedIdentity] Configuration for managed identity authentication.
  DataLakeServiceStorageAuthentication({
    this.accessTokenSecretName,
    this.systemAssignedManagedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTokenSecretName': ?accessTokenSecretName,
      'systemAssignedManagedIdentity': ?systemAssignedManagedIdentity == null ? null : systemAssignedManagedIdentity!.toMap(),
    };
  }

  factory DataLakeServiceStorageAuthentication.fromMap(Map<String, dynamic> map) {
    return DataLakeServiceStorageAuthentication(
      accessTokenSecretName: map['accessTokenSecretName'] == null ? null : map['accessTokenSecretName'] as String,
      systemAssignedManagedIdentity: map['systemAssignedManagedIdentity'] == null ? null : ManagedIdentityAuthentication.fromMap((map['systemAssignedManagedIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

