// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipaddress.dart';
import 'vnet_configuration.dart';
import 'vwan_configuration.dart';

/// Network settings for Firewall
class NetworkProfile {
  /// Egress nat IP to use
  final pulumi.Input<List<IPAddress>>? egressNatIp;

  /// Enable egress NAT, enabled by default
  final pulumi.Input<String> enableEgressNat;

  /// vnet or vwan, cannot be updated
  final pulumi.Input<String> networkType;

  /// Array of ipv4 destination address for which source NAT is to be performed
  final pulumi.Input<List<String>>? privateSourceNatRulesDestination;

  /// List of IPs associated with the Firewall
  final pulumi.Input<List<IPAddress>> publicIps;

  /// Non-RFC 1918 address
  final pulumi.Input<List<String>>? trustedRanges;

  /// Vnet configurations
  final pulumi.Input<VnetConfiguration>? vnetConfiguration;

  /// Vwan configurations
  final pulumi.Input<VwanConfiguration>? vwanConfiguration;

  /// Creates a new [NetworkProfile].
  /// [egressNatIp] Egress nat IP to use
  /// [enableEgressNat] Enable egress NAT, enabled by default
  /// [networkType] vnet or vwan, cannot be updated
  /// [privateSourceNatRulesDestination] Array of ipv4 destination address for which source NAT is to be performed
  /// [publicIps] List of IPs associated with the Firewall
  /// [trustedRanges] Non-RFC 1918 address
  /// [vnetConfiguration] Vnet configurations
  /// [vwanConfiguration] Vwan configurations
  NetworkProfile({
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
      'egressNatIp':
          ?pulumi.Input.mapOptionalInputValue<
            List<IPAddress>,
            List<Map<String, dynamic>>
          >(
            egressNatIp,
            (value) => pulumi.Input.encodeList<IPAddress, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'enableEgressNat': enableEgressNat,
      'networkType': networkType,
      'privateSourceNatRulesDestination': ?privateSourceNatRulesDestination,
      'publicIps':
          pulumi
              .Input.mapInputValue<List<IPAddress>, List<Map<String, dynamic>>>(
            publicIps,
            (value) => pulumi.Input.encodeList<IPAddress, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'trustedRanges': ?trustedRanges,
      'vnetConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            VnetConfiguration,
            Map<String, dynamic>
          >(vnetConfiguration, (value) => value.toMap()),
      'vwanConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            VwanConfiguration,
            Map<String, dynamic>
          >(vwanConfiguration, (value) => value.toMap()),
    };
  }

  factory NetworkProfile.fromMap(Map<String, dynamic> map) {
    return NetworkProfile(
      egressNatIp: (() {
        final guardedValue = map['egressNatIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<IPAddress>(
            guardedValue,
            (value) =>
                IPAddress.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      enableEgressNat: pulumi.Input.fromValue(map['enableEgressNat'] as String),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      privateSourceNatRulesDestination: (() {
        final guardedValue = map['privateSourceNatRulesDestination'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      publicIps: pulumi.Input.fromValue(
        pulumi.Input.decodeList<IPAddress>(
          map['publicIps']!,
          (value) => IPAddress.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      trustedRanges: (() {
        final guardedValue = map['trustedRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      vnetConfiguration: (() {
        final guardedValue = map['vnetConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VnetConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vwanConfiguration: (() {
        final guardedValue = map['vwanConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VwanConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
