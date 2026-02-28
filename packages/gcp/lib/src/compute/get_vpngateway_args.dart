// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_vpngateway_get_vpngateway_args_doc}
/// Arguments for getVPNGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_get_vpngateway_get_vpngateway_args_doc}
class GetVPNGatewayArgs {
  /// The name of the VPN gateway.
  ///
  ///
  /// - - -
  final pulumi.Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region in which the resource belongs. If it
  /// is not provided, the project region is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetVPNGatewayArgs].
  /// [name] The name of the VPN gateway.
  /// [project] The project in which the resource belongs. If it
  /// [region] The region in which the resource belongs. If it
  GetVPNGatewayArgs({
    required String name,
    String? project,
    String? region,
  })  : name = pulumi.Input.asInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetVPNGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetVPNGatewayArgs(
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
