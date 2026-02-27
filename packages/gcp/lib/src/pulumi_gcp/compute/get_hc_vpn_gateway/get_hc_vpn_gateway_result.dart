// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_hc_vpn_gateway_vpn_interface/get_hc_vpn_gateway_vpn_interface.dart';

/// Result data returned by getHcVpnGateway.
class GetHcVpnGatewayResult {
  final String description;
  final Map<String, String> effectiveLabels;
  final String gatewayIpVersion;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String labelFingerprint;
  final Map<String, String> labels;
  final String name;
  final String network;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String? region;
  final String selfLink;
  final String stackType;
  final List<GetHcVpnGatewayVpnInterface> vpnInterfaces;

  GetHcVpnGatewayResult({
    required this.description,
    required this.effectiveLabels,
    required this.gatewayIpVersion,
    required this.id,
    required this.labelFingerprint,
    required this.labels,
    required this.name,
    required this.network,
    this.project,
    required this.pulumiLabels,
    this.region,
    required this.selfLink,
    required this.stackType,
    required this.vpnInterfaces,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['effectiveLabels'] = effectiveLabels;
    map['gatewayIpVersion'] = gatewayIpVersion;
    map['id'] = id;
    map['labelFingerprint'] = labelFingerprint;
    map['labels'] = labels;
    map['name'] = name;
    map['network'] = network;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['selfLink'] = selfLink;
    map['stackType'] = stackType;
    map['vpnInterfaces'] = pulumi.Input.encodeList<GetHcVpnGatewayVpnInterface,
        Map<String, dynamic>>(vpnInterfaces, (value) => value.toMap());
    return map;
  }

  factory GetHcVpnGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetHcVpnGatewayResult(
      description: map['description'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      gatewayIpVersion: map['gatewayIpVersion'] as String,
      id: map['id'] as String,
      labelFingerprint: map['labelFingerprint'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      network: map['network'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      region: map['region'] == null ? null : map['region'] as String,
      selfLink: map['selfLink'] as String,
      stackType: map['stackType'] as String,
      vpnInterfaces: pulumi.Input.decodeList<GetHcVpnGatewayVpnInterface>(
          map['vpnInterfaces'],
          (value) => GetHcVpnGatewayVpnInterface.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
