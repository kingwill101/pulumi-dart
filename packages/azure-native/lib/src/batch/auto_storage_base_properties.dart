// ignore_for_file: unused_element, unnecessary_cast

import 'auto_storage_authentication_mode.dart';
import 'compute_node_identity_reference.dart';

/// The properties related to the auto-storage account.
class AutoStorageBaseProperties {
  /// The authentication mode which the Batch service will use to manage the auto-storage account.
  final AutoStorageAuthenticationMode? authenticationMode;
  /// The identity referenced here must be assigned to pools which have compute nodes that need access to auto-storage.
  final ComputeNodeIdentityReference? nodeIdentityReference;
  /// The resource ID of the storage account to be used for auto-storage account.
  final String storageAccountId;

  /// Creates a new [AutoStorageBaseProperties].
  /// [authenticationMode] The authentication mode which the Batch service will use to manage the auto-storage account.
  /// [nodeIdentityReference] The identity referenced here must be assigned to pools which have compute nodes that need access to auto-storage.
  /// [storageAccountId] The resource ID of the storage account to be used for auto-storage account.
  AutoStorageBaseProperties({
    this.authenticationMode,
    this.nodeIdentityReference,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode == null ? null : authenticationMode!.value,
      'nodeIdentityReference': ?nodeIdentityReference == null ? null : nodeIdentityReference!.toMap(),
      'storageAccountId': storageAccountId,
    };
  }

  factory AutoStorageBaseProperties.fromMap(Map<String, dynamic> map) {
    return AutoStorageBaseProperties(
      authenticationMode: map['authenticationMode'] == null ? null : AutoStorageAuthenticationMode.fromValue(map['authenticationMode'] as String),
      nodeIdentityReference: map['nodeIdentityReference'] == null ? null : ComputeNodeIdentityReference.fromMap((map['nodeIdentityReference'] as Map).cast<String, dynamic>()),
      storageAccountId: map['storageAccountId'] as String,
    );
  }
}

