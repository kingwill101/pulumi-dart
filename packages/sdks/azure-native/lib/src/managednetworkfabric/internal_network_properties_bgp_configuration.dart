// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bfd_configuration.dart';
import 'neighbor_address.dart';

/// BGP configuration properties.
class InternalNetworkPropertiesBgpConfiguration {
  /// Allows for routes to be received and processed even if the router detects its own ASN in the AS-Path. 0 is disable, Possible values are 1-10, default is 2.
  final pulumi.Input<int>? allowAS;
  /// Enable Or Disable state.
  final pulumi.Input<String>? allowASOverride;
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// BFD configuration properties
  final pulumi.Input<BfdConfiguration>? bfdConfiguration;
  /// Originate a defaultRoute. Ex: "True" | "False".
  final pulumi.Input<String>? defaultRouteOriginate;
  /// List of BGP IPv4 Listen Range prefixes.
  final pulumi.Input<List<String>>? ipv4ListenRangePrefixes;
  /// List with stringified IPv4 Neighbor Addresses.
  final pulumi.Input<List<NeighborAddress>>? ipv4NeighborAddress;
  /// List of BGP IPv6 Listen Ranges prefixes.
  final pulumi.Input<List<String>>? ipv6ListenRangePrefixes;
  /// List with stringified IPv6 Neighbor Address.
  final pulumi.Input<List<NeighborAddress>>? ipv6NeighborAddress;
  /// Peer ASN. Example: 65047.
  final pulumi.Input<double> peerASN;

  /// Creates a new [InternalNetworkPropertiesBgpConfiguration].
  /// [allowAS] Allows for routes to be received and processed even if the router detects its own ASN in the AS-Path. 0 is disable, Possible values are 1-10, default is 2.
  /// [allowASOverride] Enable Or Disable state.
  /// [annotation] Switch configuration description.
  /// [bfdConfiguration] BFD configuration properties
  /// [defaultRouteOriginate] Originate a defaultRoute. Ex: "True" | "False".
  /// [ipv4ListenRangePrefixes] List of BGP IPv4 Listen Range prefixes.
  /// [ipv4NeighborAddress] List with stringified IPv4 Neighbor Addresses.
  /// [ipv6ListenRangePrefixes] List of BGP IPv6 Listen Ranges prefixes.
  /// [ipv6NeighborAddress] List with stringified IPv6 Neighbor Address.
  /// [peerASN] Peer ASN. Example: 65047.
  InternalNetworkPropertiesBgpConfiguration({
    this.allowAS,
    this.allowASOverride,
    this.annotation,
    this.bfdConfiguration,
    this.defaultRouteOriginate,
    this.ipv4ListenRangePrefixes,
    this.ipv4NeighborAddress,
    this.ipv6ListenRangePrefixes,
    this.ipv6NeighborAddress,
    required this.peerASN,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAS': ?allowAS,
      'allowASOverride': ?allowASOverride,
      'annotation': ?annotation,
      'bfdConfiguration': ?pulumi.Input.mapOptionalInputValue<BfdConfiguration, Map<String, dynamic>>(bfdConfiguration, (value) => value.toMap()),
      'defaultRouteOriginate': ?defaultRouteOriginate,
      'ipv4ListenRangePrefixes': ?ipv4ListenRangePrefixes,
      'ipv4NeighborAddress': ?pulumi.Input.mapOptionalInputValue<List<NeighborAddress>, List<Map<String, dynamic>>>(ipv4NeighborAddress, (value) => pulumi.Input.encodeList<NeighborAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6ListenRangePrefixes': ?ipv6ListenRangePrefixes,
      'ipv6NeighborAddress': ?pulumi.Input.mapOptionalInputValue<List<NeighborAddress>, List<Map<String, dynamic>>>(ipv6NeighborAddress, (value) => pulumi.Input.encodeList<NeighborAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'peerASN': peerASN,
    };
  }

  factory InternalNetworkPropertiesBgpConfiguration.fromMap(Map<String, dynamic> map) {
    return InternalNetworkPropertiesBgpConfiguration(
      allowAS: (() { final guardedValue = map['allowAS']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      allowASOverride: (() { final guardedValue = map['allowASOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bfdConfiguration: (() { final guardedValue = map['bfdConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BfdConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultRouteOriginate: (() { final guardedValue = map['defaultRouteOriginate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4ListenRangePrefixes: (() { final guardedValue = map['ipv4ListenRangePrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv4NeighborAddress: (() { final guardedValue = map['ipv4NeighborAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NeighborAddress>(guardedValue, (value) => NeighborAddress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipv6ListenRangePrefixes: (() { final guardedValue = map['ipv6ListenRangePrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv6NeighborAddress: (() { final guardedValue = map['ipv6NeighborAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NeighborAddress>(guardedValue, (value) => NeighborAddress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      peerASN: pulumi.Input.fromValue(map['peerASN'] as double),
    );
  }
}

