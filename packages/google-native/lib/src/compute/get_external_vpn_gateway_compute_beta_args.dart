// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_external_vpn_gateway_compute_beta_args_doc}
/// Arguments for getExternalVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_external_vpn_gateway_compute_beta_args_doc}
class GetExternalVpnGatewayComputeBetaArgs {
  final pulumi.Input<String> externalVpnGateway;
  final pulumi.Input<String>? project;

  /// Creates a new [GetExternalVpnGatewayComputeBetaArgs].
  /// [externalVpnGateway] Required.
  /// [project] Optional.
  GetExternalVpnGatewayComputeBetaArgs({
    required String externalVpnGateway,
    String? project,
  })  : externalVpnGateway = pulumi.Input.asInput<String>(externalVpnGateway),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['externalVpnGateway'] = externalVpnGateway;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetExternalVpnGatewayComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetExternalVpnGatewayComputeBetaArgs(
      externalVpnGateway: map['externalVpnGateway'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
