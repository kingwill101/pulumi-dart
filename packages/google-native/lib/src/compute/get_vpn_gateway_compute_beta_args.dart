// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_vpn_gateway_compute_beta_args_doc}
/// Arguments for getVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_vpn_gateway_compute_beta_args_doc}
class GetVpnGatewayComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> vpnGateway;

  /// Creates a new [GetVpnGatewayComputeBetaArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [vpnGateway] Required.
  GetVpnGatewayComputeBetaArgs({
    String? project,
    required String region,
    required String vpnGateway,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region),
        vpnGateway = pulumi.Input.asInput<String>(vpnGateway);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['vpnGateway'] = vpnGateway;
    return map;
  }

  factory GetVpnGatewayComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayComputeBetaArgs(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      vpnGateway: map['vpnGateway'] as String,
    );
  }
}
