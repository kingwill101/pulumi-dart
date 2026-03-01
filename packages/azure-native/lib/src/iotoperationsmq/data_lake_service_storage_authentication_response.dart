// ignore_for_file: unused_element, unnecessary_cast

import 'managed_identity_authentication_response.dart';

/// DataLake Service Storage authentication details. NOTE - Enum only one method is supported.
class DataLakeServiceStorageAuthenticationResponse {
  /// Access token secret name.
  final String? accessTokenSecretName;
  /// Configuration for managed identity authentication.
  final ManagedIdentityAuthenticationResponse? systemAssignedManagedIdentity;

  /// Creates a new [DataLakeServiceStorageAuthenticationResponse].
  /// [accessTokenSecretName] Access token secret name.
  /// [systemAssignedManagedIdentity] Configuration for managed identity authentication.
  DataLakeServiceStorageAuthenticationResponse({
    this.accessTokenSecretName,
    this.systemAssignedManagedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTokenSecretName': ?accessTokenSecretName,
      'systemAssignedManagedIdentity': ?systemAssignedManagedIdentity == null ? null : systemAssignedManagedIdentity!.toMap(),
    };
  }

  factory DataLakeServiceStorageAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return DataLakeServiceStorageAuthenticationResponse(
      accessTokenSecretName: map['accessTokenSecretName'] == null ? null : map['accessTokenSecretName'] as String,
      systemAssignedManagedIdentity: map['systemAssignedManagedIdentity'] == null ? null : ManagedIdentityAuthenticationResponse.fromMap((map['systemAssignedManagedIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

