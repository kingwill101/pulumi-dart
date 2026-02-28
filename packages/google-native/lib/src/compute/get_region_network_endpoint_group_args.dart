// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_network_endpoint_group_args_doc}
/// Arguments for getRegionNetworkEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_network_endpoint_group_args_doc}
class GetRegionNetworkEndpointGroupArgs {
  final pulumi.Input<String> networkEndpointGroup;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionNetworkEndpointGroupArgs].
  /// [networkEndpointGroup] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionNetworkEndpointGroupArgs({
    required String networkEndpointGroup,
    String? project,
    required String region,
  })  : networkEndpointGroup =
            pulumi.Input.asInput<String>(networkEndpointGroup),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkEndpointGroup'] = networkEndpointGroup;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetRegionNetworkEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionNetworkEndpointGroupArgs(
      networkEndpointGroup: map['networkEndpointGroup'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}
