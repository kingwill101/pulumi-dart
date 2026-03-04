// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_storage_authentication_mode.dart';
import 'compute_node_identity_reference.dart';

/// The properties related to the auto-storage account.
class AutoStorageBaseProperties {
  /// The authentication mode which the Batch service will use to manage the auto-storage account.
  final pulumi.Input<AutoStorageAuthenticationMode>? authenticationMode;

  /// The identity referenced here must be assigned to pools which have compute nodes that need access to auto-storage.
  final pulumi.Input<ComputeNodeIdentityReference>? nodeIdentityReference;

  /// The resource ID of the storage account to be used for auto-storage account.
  final pulumi.Input<String> storageAccountId;

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
      'authenticationMode':
          ?pulumi.Input.mapOptionalInputValue<
            AutoStorageAuthenticationMode,
            String
          >(authenticationMode, (value) => value.wireValue),
      'nodeIdentityReference':
          ?pulumi.Input.mapOptionalInputValue<
            ComputeNodeIdentityReference,
            Map<String, dynamic>
          >(nodeIdentityReference, (value) => value.toMap()),
      'storageAccountId': storageAccountId,
    };
  }

  factory AutoStorageBaseProperties.fromMap(Map<String, dynamic> map) {
    return AutoStorageBaseProperties(
      authenticationMode: (() {
        final guardedValue = map['authenticationMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AutoStorageAuthenticationMode.fromValue(guardedValue as String),
        );
      })(),
      nodeIdentityReference: (() {
        final guardedValue = map['nodeIdentityReference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ComputeNodeIdentityReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      storageAccountId: pulumi.Input.fromValue(
        map['storageAccountId'] as String,
      ),
    );
  }
}
