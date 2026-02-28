// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_global_network_endpoint_group_args_doc}
/// Arguments for getGlobalNetworkEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_global_network_endpoint_group_args_doc}
class GetGlobalNetworkEndpointGroupArgs {
  final pulumi.Input<String> networkEndpointGroup;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGlobalNetworkEndpointGroupArgs].
  /// [networkEndpointGroup] Required.
  /// [project] Optional.
  GetGlobalNetworkEndpointGroupArgs({
    required String networkEndpointGroup,
    String? project,
  })  : networkEndpointGroup =
            pulumi.Input.asInput<String>(networkEndpointGroup),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkEndpointGroup'] = networkEndpointGroup;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGlobalNetworkEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalNetworkEndpointGroupArgs(
      networkEndpointGroup: map['networkEndpointGroup'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
