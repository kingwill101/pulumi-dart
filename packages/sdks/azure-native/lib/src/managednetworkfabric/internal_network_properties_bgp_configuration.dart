// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bfd_configuration.dart';
import 'neighbor_address.dart';

/// BGP configuration properties.
class InternalNetworkPropertiesBgpConfiguration {
  /// Allows for routes to be received and processed even if the router detects its own ASN in the AS-Path. 0 is disable, Possible values are 1-10, default is 2.
  final int? allowAS;
  /// Enable Or Disable state.
  final String? allowASOverride;
  /// Switch configuration description.
  final String? annotation;
  /// BFD configuration properties
  final BfdConfiguration? bfdConfiguration;
  /// Originate a defaultRoute. Ex: "True" | "False".
  final String? defaultRouteOriginate;
  /// List of BGP IPv4 Listen Range prefixes.
  final List<String>? ipv4ListenRangePrefixes;
  /// List with stringified IPv4 Neighbor Addresses.
  final List<NeighborAddress>? ipv4NeighborAddress;
  /// List of BGP IPv6 Listen Ranges prefixes.
  final List<String>? ipv6ListenRangePrefixes;
  /// List with stringified IPv6 Neighbor Address.
  final List<NeighborAddress>? ipv6NeighborAddress;
  /// Peer ASN. Example: 65047.
  final double peerASN;

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
      'bfdConfiguration': ?bfdConfiguration == null ? null : bfdConfiguration!.toMap(),
      'defaultRouteOriginate': ?defaultRouteOriginate,
      'ipv4ListenRangePrefixes': ?ipv4ListenRangePrefixes,
      'ipv4NeighborAddress': ?ipv4NeighborAddress == null ? null : pulumi.Input.encodeList<NeighborAddress, Map<String, dynamic>>(ipv4NeighborAddress!, (value) => value.toMap()),
      'ipv6ListenRangePrefixes': ?ipv6ListenRangePrefixes,
      'ipv6NeighborAddress': ?ipv6NeighborAddress == null ? null : pulumi.Input.encodeList<NeighborAddress, Map<String, dynamic>>(ipv6NeighborAddress!, (value) => value.toMap()),
      'peerASN': peerASN,
    };
  }

  factory InternalNetworkPropertiesBgpConfiguration.fromMap(Map<String, dynamic> map) {
    return InternalNetworkPropertiesBgpConfiguration(
      allowAS: map['allowAS'] == null ? null : map['allowAS'] as int,
      allowASOverride: map['allowASOverride'] == null ? null : map['allowASOverride'] as String,
      annotation: map['annotation'] == null ? null : map['annotation'] as String,
      bfdConfiguration: map['bfdConfiguration'] == null ? null : BfdConfiguration.fromMap((map['bfdConfiguration'] as Map).cast<String, dynamic>()),
      defaultRouteOriginate: map['defaultRouteOriginate'] == null ? null : map['defaultRouteOriginate'] as String,
      ipv4ListenRangePrefixes: map['ipv4ListenRangePrefixes'] == null ? null : (map['ipv4ListenRangePrefixes'] as List).cast<String>(),
      ipv4NeighborAddress: map['ipv4NeighborAddress'] == null ? null : pulumi.Input.decodeList<NeighborAddress>(map['ipv4NeighborAddress'], (value) => NeighborAddress.fromMap((value as Map).cast<String, dynamic>())),
      ipv6ListenRangePrefixes: map['ipv6ListenRangePrefixes'] == null ? null : (map['ipv6ListenRangePrefixes'] as List).cast<String>(),
      ipv6NeighborAddress: map['ipv6NeighborAddress'] == null ? null : pulumi.Input.decodeList<NeighborAddress>(map['ipv6NeighborAddress'], (value) => NeighborAddress.fromMap((value as Map).cast<String, dynamic>())),
      peerASN: map['peerASN'] as double,
    );
  }
}

