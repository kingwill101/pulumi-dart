// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_backing_store_source_network_auth_secret.dart';

class DomainDevicesDiskBackingStoreSourceNetworkAuth {
  /// Specifies the secret used for authenticating the iSCSI connection.
  final DomainDevicesDiskBackingStoreSourceNetworkAuthSecret? secret;
  /// Sets the username for iSCSI authentication.
  final String? username;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceNetworkAuth].
  /// [secret] Specifies the secret used for authenticating the iSCSI connection.
  /// [username] Sets the username for iSCSI authentication.
  DomainDevicesDiskBackingStoreSourceNetworkAuth({
    this.secret,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secret': ?secret == null ? null : secret!.toMap(),
      'username': ?username,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceNetworkAuth.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceNetworkAuth(
      secret: map['secret'] == null ? null : DomainDevicesDiskBackingStoreSourceNetworkAuthSecret.fromMap((map['secret'] as Map).cast<String, dynamic>()),
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

