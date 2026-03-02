// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_storage_token_store.dart';

/// The configuration settings of the token store.
class TokenStore {
  /// The configuration settings of the storage of the tokens if blob storage is used.
  final pulumi.Input<BlobStorageTokenStore>? azureBlobStorage;
  /// <code>true</code> to durably store platform-specific security tokens that are obtained during login flows; otherwise, <code>false</code>.
  /// The default is <code>false</code>.
  final pulumi.Input<bool>? enabled;
  /// The number of hours after session token expiration that a session token can be used to
  /// call the token refresh API. The default is 72 hours.
  final pulumi.Input<double>? tokenRefreshExtensionHours;

  /// Creates a new [TokenStore].
  /// [azureBlobStorage] The configuration settings of the storage of the tokens if blob storage is used.
  /// [enabled] <code>true</code> to durably store platform-specific security tokens that are obtained during login flows; otherwise, <code>false</code>.
  /// [tokenRefreshExtensionHours] The number of hours after session token expiration that a session token can be used to
  TokenStore({
    this.azureBlobStorage,
    this.enabled,
    this.tokenRefreshExtensionHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?pulumi.Input.mapOptionalInputValue<BlobStorageTokenStore, Map<String, dynamic>>(azureBlobStorage, (value) => value.toMap()),
      'enabled': ?enabled,
      'tokenRefreshExtensionHours': ?tokenRefreshExtensionHours,
    };
  }

  factory TokenStore.fromMap(Map<String, dynamic> map) {
    return TokenStore(
      azureBlobStorage: map['azureBlobStorage'] == null ? null : (BlobStorageTokenStore.fromMap((map['azureBlobStorage'] as Map).cast<String, dynamic>())).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      tokenRefreshExtensionHours: map['tokenRefreshExtensionHours'] == null ? null : (map['tokenRefreshExtensionHours'] as double).input(),
    );
  }
}

