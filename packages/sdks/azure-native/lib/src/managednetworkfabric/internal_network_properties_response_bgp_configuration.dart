// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bfd_configuration_response.dart';
import 'neighbor_address_response.dart';

/// BGP configuration properties.
class InternalNetworkPropertiesResponseBgpConfiguration {
  /// Allows for routes to be received and processed even if the router detects its own ASN in the AS-Path. 0 is disable, Possible values are 1-10, default is 2.
  final pulumi.Input<int>? allowAS;
  /// Enable Or Disable state.
  final pulumi.Input<String>? allowASOverride;
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// BFD configuration properties
  final pulumi.Input<BfdConfigurationResponse>? bfdConfiguration;
  /// Originate a defaultRoute. Ex: "True" | "False".
  final pulumi.Input<String>? defaultRouteOriginate;
  /// ASN of Network Fabric. Example: 65048.
  final pulumi.Input<double> fabricASN;
  /// List of BGP IPv4 Listen Range prefixes.
  final pulumi.Input<List<String>>? ipv4ListenRangePrefixes;
  /// List with stringified IPv4 Neighbor Addresses.
  final pulumi.Input<List<NeighborAddressResponse>>? ipv4NeighborAddress;
  /// List of BGP IPv6 Listen Ranges prefixes.
  final pulumi.Input<List<String>>? ipv6ListenRangePrefixes;
  /// List with stringified IPv6 Neighbor Address.
  final pulumi.Input<List<NeighborAddressResponse>>? ipv6NeighborAddress;
  /// Peer ASN. Example: 65047.
  final pulumi.Input<double> peerASN;

  /// Creates a new [InternalNetworkPropertiesResponseBgpConfiguration].
  /// [allowAS] Allows for routes to be received and processed even if the router detects its own ASN in the AS-Path. 0 is disable, Possible values are 1-10, default is 2.
  /// [allowASOverride] Enable Or Disable state.
  /// [annotation] Switch configuration description.
  /// [bfdConfiguration] BFD configuration properties
  /// [defaultRouteOriginate] Originate a defaultRoute. Ex: "True" | "False".
  /// [fabricASN] ASN of Network Fabric. Example: 65048.
  /// [ipv4ListenRangePrefixes] List of BGP IPv4 Listen Range prefixes.
  /// [ipv4NeighborAddress] List with stringified IPv4 Neighbor Addresses.
  /// [ipv6ListenRangePrefixes] List of BGP IPv6 Listen Ranges prefixes.
  /// [ipv6NeighborAddress] List with stringified IPv6 Neighbor Address.
  /// [peerASN] Peer ASN. Example: 65047.
  const InternalNetworkPropertiesResponseBgpConfiguration({
    this.allowAS,
    this.allowASOverride,
    this.annotation,
    this.bfdConfiguration,
    this.defaultRouteOriginate,
    required this.fabricASN,
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
      'bfdConfiguration': ?pulumi.Input.mapOptionalInputValue<BfdConfigurationResponse, Map<String, dynamic>>(bfdConfiguration, (value) => value.toMap()),
      'defaultRouteOriginate': ?defaultRouteOriginate,
      'fabricASN': fabricASN,
      'ipv4ListenRangePrefixes': ?ipv4ListenRangePrefixes,
      'ipv4NeighborAddress': ?pulumi.Input.mapOptionalInputValue<List<NeighborAddressResponse>, List<Map<String, dynamic>>>(ipv4NeighborAddress, (value) => pulumi.Input.encodeList<NeighborAddressResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6ListenRangePrefixes': ?ipv6ListenRangePrefixes,
      'ipv6NeighborAddress': ?pulumi.Input.mapOptionalInputValue<List<NeighborAddressResponse>, List<Map<String, dynamic>>>(ipv6NeighborAddress, (value) => pulumi.Input.encodeList<NeighborAddressResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'peerASN': peerASN,
    };
  }

  factory InternalNetworkPropertiesResponseBgpConfiguration.fromMap(Map<String, dynamic> map) {
    return InternalNetworkPropertiesResponseBgpConfiguration(
      allowAS: (() { final guardedValue = map['allowAS']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      allowASOverride: (() { final guardedValue = map['allowASOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bfdConfiguration: (() { final guardedValue = map['bfdConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BfdConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultRouteOriginate: (() { final guardedValue = map['defaultRouteOriginate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fabricASN: pulumi.Input.fromValue(map['fabricASN'] as double),
      ipv4ListenRangePrefixes: (() { final guardedValue = map['ipv4ListenRangePrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv4NeighborAddress: (() { final guardedValue = map['ipv4NeighborAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NeighborAddressResponse>(guardedValue, (value) => NeighborAddressResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipv6ListenRangePrefixes: (() { final guardedValue = map['ipv6ListenRangePrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv6NeighborAddress: (() { final guardedValue = map['ipv6NeighborAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NeighborAddressResponse>(guardedValue, (value) => NeighborAddressResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      peerASN: pulumi.Input.fromValue(map['peerASN'] as double),
    );
  }
}
