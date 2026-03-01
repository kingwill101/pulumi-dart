// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_forward_address.dart';
import 'network_forward_driver.dart';
import 'network_forward_interface.dart';
import 'network_forward_nat.dart';
import 'network_forward_pf.dart';

class NetworkForward {
  /// Defines the addresses to which traffic should be forwarded.
  final List<NetworkForwardAddress>? addresses;
  /// Sets the specific device for the forwarding configuration.
  final String? dev;
  /// Configures the driver used for the network forwarding.
  final NetworkForwardDriver? driver;
  /// Defines the interfaces to be used for forwarding.
  final List<NetworkForwardInterface>? interfaces;
  /// Indicates whether the forwarding configuration is managed by libvirt.
  final bool? managed;
  /// Configures the mode of operation for the network forwarding.
  final String? mode;
  /// Enables or disables NAT (Network Address Translation) for the forwarding configuration.
  final NetworkForwardNat? nat;
  /// Configures per-packet forwarding service, enabling a fine-tuned forwarding operation.
  final List<NetworkForwardPf>? pfs;

  /// Creates a new [NetworkForward].
  /// [addresses] Defines the addresses to which traffic should be forwarded.
  /// [dev] Sets the specific device for the forwarding configuration.
  /// [driver] Configures the driver used for the network forwarding.
  /// [interfaces] Defines the interfaces to be used for forwarding.
  /// [managed] Indicates whether the forwarding configuration is managed by libvirt.
  /// [mode] Configures the mode of operation for the network forwarding.
  /// [nat] Enables or disables NAT (Network Address Translation) for the forwarding configuration.
  /// [pfs] Configures per-packet forwarding service, enabling a fine-tuned forwarding operation.
  NetworkForward({
    this.addresses,
    this.dev,
    this.driver,
    this.interfaces,
    this.managed,
    this.mode,
    this.nat,
    this.pfs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses == null ? null : pulumi.Input.encodeList<NetworkForwardAddress, Map<String, dynamic>>(addresses!, (value) => value.toMap()),
      'dev': ?dev,
      'driver': ?driver == null ? null : driver!.toMap(),
      'interfaces': ?interfaces == null ? null : pulumi.Input.encodeList<NetworkForwardInterface, Map<String, dynamic>>(interfaces!, (value) => value.toMap()),
      'managed': ?managed,
      'mode': ?mode,
      'nat': ?nat == null ? null : nat!.toMap(),
      'pfs': ?pfs == null ? null : pulumi.Input.encodeList<NetworkForwardPf, Map<String, dynamic>>(pfs!, (value) => value.toMap()),
    };
  }

  factory NetworkForward.fromMap(Map<String, dynamic> map) {
    return NetworkForward(
      addresses: map['addresses'] == null ? null : pulumi.Input.decodeList<NetworkForwardAddress>(map['addresses'], (value) => NetworkForwardAddress.fromMap((value as Map).cast<String, dynamic>())),
      dev: map['dev'] == null ? null : map['dev'] as String,
      driver: map['driver'] == null ? null : NetworkForwardDriver.fromMap((map['driver'] as Map).cast<String, dynamic>()),
      interfaces: map['interfaces'] == null ? null : pulumi.Input.decodeList<NetworkForwardInterface>(map['interfaces'], (value) => NetworkForwardInterface.fromMap((value as Map).cast<String, dynamic>())),
      managed: map['managed'] == null ? null : map['managed'] as bool,
      mode: map['mode'] == null ? null : map['mode'] as String,
      nat: map['nat'] == null ? null : NetworkForwardNat.fromMap((map['nat'] as Map).cast<String, dynamic>()),
      pfs: map['pfs'] == null ? null : pulumi.Input.decodeList<NetworkForwardPf>(map['pfs'], (value) => NetworkForwardPf.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

