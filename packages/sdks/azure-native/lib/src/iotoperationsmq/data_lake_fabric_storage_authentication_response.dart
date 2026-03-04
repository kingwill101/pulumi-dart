// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_authentication_response.dart';

/// DataLake Fabric Storage authentication details.
class DataLakeFabricStorageAuthenticationResponse {
  /// Configuration for managed identity authentication.
  final pulumi.Input<ManagedIdentityAuthenticationResponse>
  systemAssignedManagedIdentity;

  /// Creates a new [DataLakeFabricStorageAuthenticationResponse].
  /// [systemAssignedManagedIdentity] Configuration for managed identity authentication.
  DataLakeFabricStorageAuthenticationResponse({
    required this.systemAssignedManagedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemAssignedManagedIdentity':
          pulumi.Input.mapInputValue<
            ManagedIdentityAuthenticationResponse,
            Map<String, dynamic>
          >(systemAssignedManagedIdentity, (value) => value.toMap()),
    };
  }

  factory DataLakeFabricStorageAuthenticationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataLakeFabricStorageAuthenticationResponse(
      systemAssignedManagedIdentity: pulumi.Input.fromValue(
        ManagedIdentityAuthenticationResponse.fromMap(
          (map['systemAssignedManagedIdentity']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
    );
  }
}
