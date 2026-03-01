// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_vpn_gateway_compute_v1_args_doc}
/// Arguments for getVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_vpn_gateway_compute_v1_args_doc}
class GetVpnGatewayComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> vpnGateway;

  /// Creates a new [GetVpnGatewayComputeV1Args].
  /// [project] Optional.
  /// [region] Required.
  /// [vpnGateway] Required.
  GetVpnGatewayComputeV1Args({
    String? project,
    required String region,
    required String vpnGateway,
  }) : project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region),
       vpnGateway = pulumi.Input.asInput<String>(vpnGateway);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'vpnGateway': vpnGateway,
    };
  }

  factory GetVpnGatewayComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayComputeV1Args(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      vpnGateway: map['vpnGateway'] as String,
    );
  }
}
