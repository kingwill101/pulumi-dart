// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_node_identity_reference_response.dart';

/// Contains information about the auto-storage account associated with a Batch account.
class AutoStoragePropertiesResponse {
  /// The authentication mode which the Batch service will use to manage the auto-storage account.
  final pulumi.Input<String>? authenticationMode;
  /// The UTC time at which storage keys were last synchronized with the Batch account.
  final pulumi.Input<String> lastKeySync;
  /// The identity referenced here must be assigned to pools which have compute nodes that need access to auto-storage.
  final pulumi.Input<ComputeNodeIdentityReferenceResponse>? nodeIdentityReference;
  /// The resource ID of the storage account to be used for auto-storage account.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [AutoStoragePropertiesResponse].
  /// [authenticationMode] The authentication mode which the Batch service will use to manage the auto-storage account.
  /// [lastKeySync] The UTC time at which storage keys were last synchronized with the Batch account.
  /// [nodeIdentityReference] The identity referenced here must be assigned to pools which have compute nodes that need access to auto-storage.
  /// [storageAccountId] The resource ID of the storage account to be used for auto-storage account.
  const AutoStoragePropertiesResponse({
    this.authenticationMode,
    required this.lastKeySync,
    this.nodeIdentityReference,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'lastKeySync': lastKeySync,
      'nodeIdentityReference': ?pulumi.Input.mapOptionalInputValue<ComputeNodeIdentityReferenceResponse, Map<String, dynamic>>(nodeIdentityReference, (value) => value.toMap()),
      'storageAccountId': storageAccountId,
    };
  }

  factory AutoStoragePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AutoStoragePropertiesResponse(
      authenticationMode: (() { final guardedValue = map['authenticationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastKeySync: pulumi.Input.fromValue(map['lastKeySync'] as String),
      nodeIdentityReference: (() { final guardedValue = map['nodeIdentityReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeNodeIdentityReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
    );
  }
}
