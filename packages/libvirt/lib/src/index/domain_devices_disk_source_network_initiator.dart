// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_source_network_initiator_iqn.dart';

class DomainDevicesDiskSourceNetworkInitiator {
  /// Configures the iSCSI qualified name (IQN) used for the initiator in network block device configurations.
  final DomainDevicesDiskSourceNetworkInitiatorIqn? iqn;

  /// Creates a new [DomainDevicesDiskSourceNetworkInitiator].
  /// [iqn] Configures the iSCSI qualified name (IQN) used for the initiator in network block device configurations.
  DomainDevicesDiskSourceNetworkInitiator({
    this.iqn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iqn': ?iqn == null ? null : iqn!.toMap(),
    };
  }

  factory DomainDevicesDiskSourceNetworkInitiator.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceNetworkInitiator(
      iqn: map['iqn'] == null ? null : DomainDevicesDiskSourceNetworkInitiatorIqn.fromMap((map['iqn'] as Map).cast<String, dynamic>()),
    );
  }
}

