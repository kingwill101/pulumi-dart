// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_interface_source_bridge.dart';
import 'domain_devices_interface_source_client.dart';
import 'domain_devices_interface_source_direct.dart';
import 'domain_devices_interface_source_ethernet.dart';
import 'domain_devices_interface_source_hostdev.dart';
import 'domain_devices_interface_source_internal.dart';
import 'domain_devices_interface_source_mcast.dart';
import 'domain_devices_interface_source_network.dart';
import 'domain_devices_interface_source_server.dart';
import 'domain_devices_interface_source_udp.dart';
import 'domain_devices_interface_source_user.dart';
import 'domain_devices_interface_source_vdpa.dart';
import 'domain_devices_interface_source_vds.dart';
import 'domain_devices_interface_source_vhost_user.dart';

class DomainDevicesInterfaceSource {
  /// Sets the bridge configuration for the network interface, allowing the interface to connect via a bridge.
  final DomainDevicesInterfaceSourceBridge? bridge;
  /// Configures the client source for the network interface, typically used for user-mode networking.
  final DomainDevicesInterfaceSourceClient? client;
  /// Configures settings for direct attachment to a physical interface for the network interface.
  final DomainDevicesInterfaceSourceDirect? direct;
  /// Configures Ethernet settings for the network interface, allowing for low-level network configurations.
  final DomainDevicesInterfaceSourceEthernet? ethernet;
  /// Configures the settings for a host device used in the network interface configuration.
  final DomainDevicesInterfaceSourceHostdev? hostdev;
  /// Configures the internal settings for the network interface, typically for non-connected setups.
  final DomainDevicesInterfaceSourceInternal? internal;
  /// Configures the multicast settings for the network interface, enabling multicast communication.
  final DomainDevicesInterfaceSourceMcast? mcast;
  /// Specifies network settings for the interface, configuring its connection to a given network.
  final DomainDevicesInterfaceSourceNetwork? network;
  /// Specifies that the network interface does not connect to any active source, effectively disabling it.
  final bool? null_;
  /// Configures source settings to connect the network interface to a specific server.
  final DomainDevicesInterfaceSourceServer? server;
  /// Configures UDP settings for the network interface, allowing for UDP-based communications.
  final DomainDevicesInterfaceSourceUdp? udp;
  /// Configures user-based settings for the network interface, allowing for user management of the connection.
  final DomainDevicesInterfaceSourceUser? user;
  /// Configures settings for using a vDPA network device with the interface, enabling specialized network performance.
  final DomainDevicesInterfaceSourceVdpa? vdpa;
  /// Configures settings for using a vDS network source with the interface, supporting advanced network features.
  final DomainDevicesInterfaceSourceVds? vds;
  /// Sets configurations for using vhost-user to connect the network interface to a user space application.
  final DomainDevicesInterfaceSourceVhostUser? vhostUser;

  /// Creates a new [DomainDevicesInterfaceSource].
  /// [bridge] Sets the bridge configuration for the network interface, allowing the interface to connect via a bridge.
  /// [client] Configures the client source for the network interface, typically used for user-mode networking.
  /// [direct] Configures settings for direct attachment to a physical interface for the network interface.
  /// [ethernet] Configures Ethernet settings for the network interface, allowing for low-level network configurations.
  /// [hostdev] Configures the settings for a host device used in the network interface configuration.
  /// [internal] Configures the internal settings for the network interface, typically for non-connected setups.
  /// [mcast] Configures the multicast settings for the network interface, enabling multicast communication.
  /// [network] Specifies network settings for the interface, configuring its connection to a given network.
  /// [null_] Specifies that the network interface does not connect to any active source, effectively disabling it.
  /// [server] Configures source settings to connect the network interface to a specific server.
  /// [udp] Configures UDP settings for the network interface, allowing for UDP-based communications.
  /// [user] Configures user-based settings for the network interface, allowing for user management of the connection.
  /// [vdpa] Configures settings for using a vDPA network device with the interface, enabling specialized network performance.
  /// [vds] Configures settings for using a vDS network source with the interface, supporting advanced network features.
  /// [vhostUser] Sets configurations for using vhost-user to connect the network interface to a user space application.
  DomainDevicesInterfaceSource({
    this.bridge,
    this.client,
    this.direct,
    this.ethernet,
    this.hostdev,
    this.internal,
    this.mcast,
    this.network,
    this.null_,
    this.server,
    this.udp,
    this.user,
    this.vdpa,
    this.vds,
    this.vhostUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bridge': ?bridge == null ? null : bridge!.toMap(),
      'client': ?client == null ? null : client!.toMap(),
      'direct': ?direct == null ? null : direct!.toMap(),
      'ethernet': ?ethernet == null ? null : ethernet!.toMap(),
      'hostdev': ?hostdev == null ? null : hostdev!.toMap(),
      'internal': ?internal == null ? null : internal!.toMap(),
      'mcast': ?mcast == null ? null : mcast!.toMap(),
      'network': ?network == null ? null : network!.toMap(),
      'null': ?null_,
      'server': ?server == null ? null : server!.toMap(),
      'udp': ?udp == null ? null : udp!.toMap(),
      'user': ?user == null ? null : user!.toMap(),
      'vdpa': ?vdpa == null ? null : vdpa!.toMap(),
      'vds': ?vds == null ? null : vds!.toMap(),
      'vhostUser': ?vhostUser == null ? null : vhostUser!.toMap(),
    };
  }

  factory DomainDevicesInterfaceSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSource(
      bridge: map['bridge'] == null ? null : DomainDevicesInterfaceSourceBridge.fromMap((map['bridge'] as Map).cast<String, dynamic>()),
      client: map['client'] == null ? null : DomainDevicesInterfaceSourceClient.fromMap((map['client'] as Map).cast<String, dynamic>()),
      direct: map['direct'] == null ? null : DomainDevicesInterfaceSourceDirect.fromMap((map['direct'] as Map).cast<String, dynamic>()),
      ethernet: map['ethernet'] == null ? null : DomainDevicesInterfaceSourceEthernet.fromMap((map['ethernet'] as Map).cast<String, dynamic>()),
      hostdev: map['hostdev'] == null ? null : DomainDevicesInterfaceSourceHostdev.fromMap((map['hostdev'] as Map).cast<String, dynamic>()),
      internal: map['internal'] == null ? null : DomainDevicesInterfaceSourceInternal.fromMap((map['internal'] as Map).cast<String, dynamic>()),
      mcast: map['mcast'] == null ? null : DomainDevicesInterfaceSourceMcast.fromMap((map['mcast'] as Map).cast<String, dynamic>()),
      network: map['network'] == null ? null : DomainDevicesInterfaceSourceNetwork.fromMap((map['network'] as Map).cast<String, dynamic>()),
      null_: map['null'] == null ? null : map['null'] as bool,
      server: map['server'] == null ? null : DomainDevicesInterfaceSourceServer.fromMap((map['server'] as Map).cast<String, dynamic>()),
      udp: map['udp'] == null ? null : DomainDevicesInterfaceSourceUdp.fromMap((map['udp'] as Map).cast<String, dynamic>()),
      user: map['user'] == null ? null : DomainDevicesInterfaceSourceUser.fromMap((map['user'] as Map).cast<String, dynamic>()),
      vdpa: map['vdpa'] == null ? null : DomainDevicesInterfaceSourceVdpa.fromMap((map['vdpa'] as Map).cast<String, dynamic>()),
      vds: map['vds'] == null ? null : DomainDevicesInterfaceSourceVds.fromMap((map['vds'] as Map).cast<String, dynamic>()),
      vhostUser: map['vhostUser'] == null ? null : DomainDevicesInterfaceSourceVhostUser.fromMap((map['vhostUser'] as Map).cast<String, dynamic>()),
    );
  }
}

