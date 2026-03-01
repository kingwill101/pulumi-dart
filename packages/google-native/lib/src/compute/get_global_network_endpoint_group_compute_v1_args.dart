// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_global_network_endpoint_group_compute_v1_args_doc}
/// Arguments for getGlobalNetworkEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_global_network_endpoint_group_compute_v1_args_doc}
class GetGlobalNetworkEndpointGroupComputeV1Args {
  final pulumi.Input<String> networkEndpointGroup;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGlobalNetworkEndpointGroupComputeV1Args].
  /// [networkEndpointGroup] Required.
  /// [project] Optional.
  GetGlobalNetworkEndpointGroupComputeV1Args({
    required String networkEndpointGroup,
    String? project,
  }) : networkEndpointGroup = pulumi.Input.asInput<String>(
         networkEndpointGroup,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkEndpointGroup': networkEndpointGroup,
      'project': ?project,
    };
  }

  factory GetGlobalNetworkEndpointGroupComputeV1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGlobalNetworkEndpointGroupComputeV1Args(
      networkEndpointGroup: map['networkEndpointGroup'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
