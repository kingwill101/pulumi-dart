// ignore_for_file: unused_element, unnecessary_cast

import 'managed_identity_authentication_response.dart';

/// DataLake Fabric Storage authentication details.
class DataLakeFabricStorageAuthenticationResponse {
  /// Configuration for managed identity authentication.
  final ManagedIdentityAuthenticationResponse systemAssignedManagedIdentity;

  /// Creates a new [DataLakeFabricStorageAuthenticationResponse].
  /// [systemAssignedManagedIdentity] Configuration for managed identity authentication.
  DataLakeFabricStorageAuthenticationResponse({
    required this.systemAssignedManagedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemAssignedManagedIdentity': systemAssignedManagedIdentity.toMap(),
    };
  }

  factory DataLakeFabricStorageAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return DataLakeFabricStorageAuthenticationResponse(
      systemAssignedManagedIdentity: ManagedIdentityAuthenticationResponse.fromMap((map['systemAssignedManagedIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

