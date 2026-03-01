// ignore_for_file: unused_element, unnecessary_cast

import 'managed_identity_authentication.dart';

/// DataLake Fabric Storage authentication details.
class DataLakeFabricStorageAuthentication {
  /// Configuration for managed identity authentication.
  final ManagedIdentityAuthentication systemAssignedManagedIdentity;

  /// Creates a new [DataLakeFabricStorageAuthentication].
  /// [systemAssignedManagedIdentity] Configuration for managed identity authentication.
  DataLakeFabricStorageAuthentication({
    required this.systemAssignedManagedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemAssignedManagedIdentity': systemAssignedManagedIdentity.toMap(),
    };
  }

  factory DataLakeFabricStorageAuthentication.fromMap(Map<String, dynamic> map) {
    return DataLakeFabricStorageAuthentication(
      systemAssignedManagedIdentity: ManagedIdentityAuthentication.fromMap((map['systemAssignedManagedIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

