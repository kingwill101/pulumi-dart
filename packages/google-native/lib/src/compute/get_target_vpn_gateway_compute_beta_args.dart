// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_target_vpn_gateway_compute_beta_args_doc}
/// Arguments for getTargetVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_target_vpn_gateway_compute_beta_args_doc}
class GetTargetVpnGatewayComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetVpnGateway;

  /// Creates a new [GetTargetVpnGatewayComputeBetaArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [targetVpnGateway] Required.
  GetTargetVpnGatewayComputeBetaArgs({
    String? project,
    required String region,
    required String targetVpnGateway,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region),
        targetVpnGateway = pulumi.Input.asInput<String>(targetVpnGateway);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['targetVpnGateway'] = targetVpnGateway;
    return map;
  }

  factory GetTargetVpnGatewayComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetVpnGatewayComputeBetaArgs(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      targetVpnGateway: map['targetVpnGateway'] as String,
    );
  }
}
