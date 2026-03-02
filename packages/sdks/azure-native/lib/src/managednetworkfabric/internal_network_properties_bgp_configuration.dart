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
      allowAS: map['allowAS'] == null ? null : (map['allowAS'] as int).input(),
      allowASOverride: map['allowASOverride'] == null ? null : (map['allowASOverride'] as String).input(),
      annotation: map['annotation'] == null ? null : (map['annotation'] as String).input(),
      bfdConfiguration: map['bfdConfiguration'] == null ? null : (BfdConfiguration.fromMap((map['bfdConfiguration'] as Map).cast<String, dynamic>())).input(),
      defaultRouteOriginate: map['defaultRouteOriginate'] == null ? null : (map['defaultRouteOriginate'] as String).input(),
      ipv4ListenRangePrefixes: map['ipv4ListenRangePrefixes'] == null ? null : ((map['ipv4ListenRangePrefixes'] as List).cast<String>()).input(),
      ipv4NeighborAddress: map['ipv4NeighborAddress'] == null ? null : (pulumi.Input.decodeList<NeighborAddress>(map['ipv4NeighborAddress'], (value) => NeighborAddress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipv6ListenRangePrefixes: map['ipv6ListenRangePrefixes'] == null ? null : ((map['ipv6ListenRangePrefixes'] as List).cast<String>()).input(),
      ipv6NeighborAddress: map['ipv6NeighborAddress'] == null ? null : (pulumi.Input.decodeList<NeighborAddress>(map['ipv6NeighborAddress'], (value) => NeighborAddress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      peerASN: (map['peerASN'] as double).input(),
    );
  }
}

