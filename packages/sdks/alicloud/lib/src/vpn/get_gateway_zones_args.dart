// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpn_get_gateway_zones_get_gateway_zones_args_doc}
/// Arguments for getGatewayZones.
/// {@endtemplate}
/// {@macro pulumi_vpn_get_gateway_zones_get_gateway_zones_args_doc}
class GetGatewayZonesArgs {
  /// A list of Zone IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Bandwidth specification.-If an IPsec connection is bound to a VPN gateway instance, this parameter indicates the Bandwidth specification of the VPN gateway instance.-If an IPsec connection is bound to a forwarding router, this parameter indicates the bandwidth that you expect the IPsec connection to support.Different bandwidth specifications may affect the zone information that is found. Value:
  /// - `5M`
  /// - `10M`
  /// - `20M`
  /// - `50M`
  /// - `100M`
  /// - `200M`
  /// - `500M`
  /// - `1000M`
  final pulumi.Input<String> spec;

  /// Creates a new [GetGatewayZonesArgs].
  /// [ids] A list of Zone IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [spec] Bandwidth specification.-If an IPsec connection is bound to a VPN gateway instance, this parameter indicates the Bandwidth specification of the VPN gateway instance.-If an IPsec connection is bound to a forwarding router, this parameter indicates the bandwidth that you expect the IPsec connection to support.Different bandwidth specifications may affect the zone information that is found. Value:
  GetGatewayZonesArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> spec,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      spec = pulumi.Input.asInput<String>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'spec': spec,
    };
  }

  factory GetGatewayZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayZonesArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      spec: pulumi.Output.create<String>(map['spec'] as String),
    );
  }
}

