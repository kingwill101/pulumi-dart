// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_graphic_rdp_listener_address.dart';
import 'domain_devices_graphic_rdp_listener_network.dart';
import 'domain_devices_graphic_rdp_listener_socket.dart';

class DomainDevicesGraphicRdpListener {
  /// Specifies the address settings for the Spice listener.
  final DomainDevicesGraphicRdpListenerAddress? address;
  /// Defines network listener settings for the Spice channel, focusing on network-based connections.
  final DomainDevicesGraphicRdpListenerNetwork? network;
  /// Configures socket listener settings for the Spice channel, enabling socket-based connections.
  final DomainDevicesGraphicRdpListenerSocket? socket;

  /// Creates a new [DomainDevicesGraphicRdpListener].
  /// [address] Specifies the address settings for the Spice listener.
  /// [network] Defines network listener settings for the Spice channel, focusing on network-based connections.
  /// [socket] Configures socket listener settings for the Spice channel, enabling socket-based connections.
  DomainDevicesGraphicRdpListener({
    this.address,
    this.network,
    this.socket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address == null ? null : address!.toMap(),
      'network': ?network == null ? null : network!.toMap(),
      'socket': ?socket == null ? null : socket!.toMap(),
    };
  }

  factory DomainDevicesGraphicRdpListener.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicRdpListener(
      address: map['address'] == null ? null : DomainDevicesGraphicRdpListenerAddress.fromMap((map['address'] as Map).cast<String, dynamic>()),
      network: map['network'] == null ? null : DomainDevicesGraphicRdpListenerNetwork.fromMap((map['network'] as Map).cast<String, dynamic>()),
      socket: map['socket'] == null ? null : DomainDevicesGraphicRdpListenerSocket.fromMap((map['socket'] as Map).cast<String, dynamic>()),
    );
  }
}

