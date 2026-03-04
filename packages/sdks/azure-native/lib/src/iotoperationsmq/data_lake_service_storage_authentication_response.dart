// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_authentication_response.dart';

/// DataLake Service Storage authentication details. NOTE - Enum only one method is supported.
class DataLakeServiceStorageAuthenticationResponse {
  /// Access token secret name.
  final pulumi.Input<String>? accessTokenSecretName;

  /// Configuration for managed identity authentication.
  final pulumi.Input<ManagedIdentityAuthenticationResponse>?
  systemAssignedManagedIdentity;

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
      'systemAssignedManagedIdentity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedIdentityAuthenticationResponse,
            Map<String, dynamic>
          >(systemAssignedManagedIdentity, (value) => value.toMap()),
    };
  }

  factory DataLakeServiceStorageAuthenticationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataLakeServiceStorageAuthenticationResponse(
      accessTokenSecretName: (() {
        final guardedValue = map['accessTokenSecretName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      systemAssignedManagedIdentity: (() {
        final guardedValue = map['systemAssignedManagedIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedIdentityAuthenticationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
