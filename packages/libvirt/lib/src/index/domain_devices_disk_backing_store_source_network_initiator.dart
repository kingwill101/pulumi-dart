// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_backing_store_source_network_initiator_iqn.dart';

class DomainDevicesDiskBackingStoreSourceNetworkInitiator {
  /// Configures the iSCSI qualified name (IQN) used for the initiator in network block device configurations.
  final DomainDevicesDiskBackingStoreSourceNetworkInitiatorIqn? iqn;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceNetworkInitiator].
  /// [iqn] Configures the iSCSI qualified name (IQN) used for the initiator in network block device configurations.
  DomainDevicesDiskBackingStoreSourceNetworkInitiator({
    this.iqn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iqn': ?iqn == null ? null : iqn!.toMap(),
    };
  }

  factory DomainDevicesDiskBackingStoreSourceNetworkInitiator.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceNetworkInitiator(
      iqn: map['iqn'] == null ? null : DomainDevicesDiskBackingStoreSourceNetworkInitiatorIqn.fromMap((map['iqn'] as Map).cast<String, dynamic>()),
    );
  }
}

