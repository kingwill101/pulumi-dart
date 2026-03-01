// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_target_vpn_gateway_args_doc}
/// Arguments for getTargetVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_target_vpn_gateway_args_doc}
class GetTargetVpnGatewayArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetVpnGateway;

  /// Creates a new [GetTargetVpnGatewayArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [targetVpnGateway] Required.
  GetTargetVpnGatewayArgs({
    String? project,
    required String region,
    required String targetVpnGateway,
  }) : project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region),
       targetVpnGateway = pulumi.Input.asInput<String>(targetVpnGateway);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'targetVpnGateway': targetVpnGateway,
    };
  }

  factory GetTargetVpnGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetVpnGatewayArgs(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      targetVpnGateway: map['targetVpnGateway'] as String,
    );
  }
}
