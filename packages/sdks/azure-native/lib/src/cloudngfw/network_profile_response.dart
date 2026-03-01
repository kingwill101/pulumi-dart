// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipaddress_response.dart';
import 'vnet_configuration_response.dart';
import 'vwan_configuration_response.dart';

/// Network settings for Firewall
class NetworkProfileResponse {
  /// Egress nat IP to use
  final List<IPAddressResponse>? egressNatIp;
  /// Enable egress NAT, enabled by default
  final String enableEgressNat;
  /// vnet or vwan, cannot be updated
  final String networkType;
  /// Array of ipv4 destination address for which source NAT is to be performed
  final List<String>? privateSourceNatRulesDestination;
  /// List of IPs associated with the Firewall
  final List<IPAddressResponse> publicIps;
  /// Non-RFC 1918 address
  final List<String>? trustedRanges;
  /// Vnet configurations
  final VnetConfigurationResponse? vnetConfiguration;
  /// Vwan configurations
  final VwanConfigurationResponse? vwanConfiguration;

  /// Creates a new [NetworkProfileResponse].
  /// [egressNatIp] Egress nat IP to use
  /// [enableEgressNat] Enable egress NAT, enabled by default
  /// [networkType] vnet or vwan, cannot be updated
  /// [privateSourceNatRulesDestination] Array of ipv4 destination address for which source NAT is to be performed
  /// [publicIps] List of IPs associated with the Firewall
  /// [trustedRanges] Non-RFC 1918 address
  /// [vnetConfiguration] Vnet configurations
  /// [vwanConfiguration] Vwan configurations
  NetworkProfileResponse({
    this.egressNatIp,
    required this.enableEgressNat,
    required this.networkType,
    this.privateSourceNatRulesDestination,
    required this.publicIps,
    this.trustedRanges,
    this.vnetConfiguration,
    this.vwanConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressNatIp': ?egressNatIp == null ? null : pulumi.Input.encodeList<IPAddressResponse, Map<String, dynamic>>(egressNatIp!, (value) => value.toMap()),
      'enableEgressNat': enableEgressNat,
      'networkType': networkType,
      'privateSourceNatRulesDestination': ?privateSourceNatRulesDestination,
      'publicIps': pulumi.Input.encodeList<IPAddressResponse, Map<String, dynamic>>(publicIps, (value) => value.toMap()),
      'trustedRanges': ?trustedRanges,
      'vnetConfiguration': ?vnetConfiguration == null ? null : vnetConfiguration!.toMap(),
      'vwanConfiguration': ?vwanConfiguration == null ? null : vwanConfiguration!.toMap(),
    };
  }

  factory NetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return NetworkProfileResponse(
      egressNatIp: map['egressNatIp'] == null ? null : pulumi.Input.decodeList<IPAddressResponse>(map['egressNatIp'], (value) => IPAddressResponse.fromMap((value as Map).cast<String, dynamic>())),
      enableEgressNat: map['enableEgressNat'] as String,
      networkType: map['networkType'] as String,
      privateSourceNatRulesDestination: map['privateSourceNatRulesDestination'] == null ? null : (map['privateSourceNatRulesDestination'] as List).cast<String>(),
      publicIps: pulumi.Input.decodeList<IPAddressResponse>(map['publicIps'], (value) => IPAddressResponse.fromMap((value as Map).cast<String, dynamic>())),
      trustedRanges: map['trustedRanges'] == null ? null : (map['trustedRanges'] as List).cast<String>(),
      vnetConfiguration: map['vnetConfiguration'] == null ? null : VnetConfigurationResponse.fromMap((map['vnetConfiguration'] as Map).cast<String, dynamic>()),
      vwanConfiguration: map['vwanConfiguration'] == null ? null : VwanConfigurationResponse.fromMap((map['vwanConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

