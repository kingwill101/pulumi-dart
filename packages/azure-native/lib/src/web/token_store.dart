// ignore_for_file: unused_element, unnecessary_cast

import 'blob_storage_token_store.dart';
import 'file_system_token_store.dart';

/// The configuration settings of the token store.
class TokenStore {
  /// The configuration settings of the storage of the tokens if blob storage is used.
  final BlobStorageTokenStore? azureBlobStorage;
  /// <code>true</code> to durably store platform-specific security tokens that are obtained during login flows; otherwise, <code>false</code>.
  /// The default is <code>false</code>.
  final bool? enabled;
  /// The configuration settings of the storage of the tokens if a file system is used.
  final FileSystemTokenStore? fileSystem;
  /// The number of hours after session token expiration that a session token can be used to
  /// call the token refresh API. The default is 72 hours.
  final double? tokenRefreshExtensionHours;

  /// Creates a new [TokenStore].
  /// [azureBlobStorage] The configuration settings of the storage of the tokens if blob storage is used.
  /// [enabled] <code>true</code> to durably store platform-specific security tokens that are obtained during login flows; otherwise, <code>false</code>.
  /// [fileSystem] The configuration settings of the storage of the tokens if a file system is used.
  /// [tokenRefreshExtensionHours] The number of hours after session token expiration that a session token can be used to
  TokenStore({
    this.azureBlobStorage,
    this.enabled,
    this.fileSystem,
    this.tokenRefreshExtensionHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?azureBlobStorage == null ? null : azureBlobStorage!.toMap(),
      'enabled': ?enabled,
      'fileSystem': ?fileSystem == null ? null : fileSystem!.toMap(),
      'tokenRefreshExtensionHours': ?tokenRefreshExtensionHours,
    };
  }

  factory TokenStore.fromMap(Map<String, dynamic> map) {
    return TokenStore(
      azureBlobStorage: map['azureBlobStorage'] == null ? null : BlobStorageTokenStore.fromMap((map['azureBlobStorage'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      fileSystem: map['fileSystem'] == null ? null : FileSystemTokenStore.fromMap((map['fileSystem'] as Map).cast<String, dynamic>()),
      tokenRefreshExtensionHours: map['tokenRefreshExtensionHours'] == null ? null : map['tokenRefreshExtensionHours'] as double,
    );
  }
}

