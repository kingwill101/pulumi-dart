// ignore_for_file: unused_element, unnecessary_cast

import 'compute_node_identity_reference_response.dart';

/// Contains information about the auto-storage account associated with a Batch account.
class AutoStoragePropertiesResponse {
  /// The authentication mode which the Batch service will use to manage the auto-storage account.
  final String? authenticationMode;
  /// The UTC time at which storage keys were last synchronized with the Batch account.
  final String lastKeySync;
  /// The identity referenced here must be assigned to pools which have compute nodes that need access to auto-storage.
  final ComputeNodeIdentityReferenceResponse? nodeIdentityReference;
  /// The resource ID of the storage account to be used for auto-storage account.
  final String storageAccountId;

  /// Creates a new [AutoStoragePropertiesResponse].
  /// [authenticationMode] The authentication mode which the Batch service will use to manage the auto-storage account.
  /// [lastKeySync] The UTC time at which storage keys were last synchronized with the Batch account.
  /// [nodeIdentityReference] The identity referenced here must be assigned to pools which have compute nodes that need access to auto-storage.
  /// [storageAccountId] The resource ID of the storage account to be used for auto-storage account.
  AutoStoragePropertiesResponse({
    this.authenticationMode,
    required this.lastKeySync,
    this.nodeIdentityReference,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'lastKeySync': lastKeySync,
      'nodeIdentityReference': ?nodeIdentityReference == null ? null : nodeIdentityReference!.toMap(),
      'storageAccountId': storageAccountId,
    };
  }

  factory AutoStoragePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AutoStoragePropertiesResponse(
      authenticationMode: map['authenticationMode'] == null ? null : map['authenticationMode'] as String,
      lastKeySync: map['lastKeySync'] as String,
      nodeIdentityReference: map['nodeIdentityReference'] == null ? null : ComputeNodeIdentityReferenceResponse.fromMap((map['nodeIdentityReference'] as Map).cast<String, dynamic>()),
      storageAccountId: map['storageAccountId'] as String,
    );
  }
}

