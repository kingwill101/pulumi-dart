// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_network_endpoint_group_compute_beta_args_doc}
/// Arguments for getNetworkEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_network_endpoint_group_compute_beta_args_doc}
class GetNetworkEndpointGroupComputeBetaArgs {
  final pulumi.Input<String> networkEndpointGroup;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetNetworkEndpointGroupComputeBetaArgs].
  /// [networkEndpointGroup] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetNetworkEndpointGroupComputeBetaArgs({
    required String networkEndpointGroup,
    String? project,
    required String zone,
  }) : networkEndpointGroup = pulumi.Input.asInput<String>(
         networkEndpointGroup,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkEndpointGroup': networkEndpointGroup,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetNetworkEndpointGroupComputeBetaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNetworkEndpointGroupComputeBetaArgs(
      networkEndpointGroup: map['networkEndpointGroup'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}
