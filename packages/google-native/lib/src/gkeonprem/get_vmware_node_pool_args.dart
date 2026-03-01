// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkeonprem_v1_get_vmware_node_pool_args_doc}
/// Arguments for getVmwareNodePool.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_get_vmware_node_pool_args_doc}
class GetVmwareNodePoolArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;
  final pulumi.Input<String> vmwareClusterId;
  final pulumi.Input<String> vmwareNodePoolId;

  /// Creates a new [GetVmwareNodePoolArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  /// [vmwareClusterId] Required.
  /// [vmwareNodePoolId] Required.
  GetVmwareNodePoolArgs({
    required String location,
    String? project,
    String? view,
    required String vmwareClusterId,
    required String vmwareNodePoolId,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       view = pulumi.Input.asOptionalInput<String>(view),
       vmwareClusterId = pulumi.Input.asInput<String>(vmwareClusterId),
       vmwareNodePoolId = pulumi.Input.asInput<String>(vmwareNodePoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'view': ?view,
      'vmwareClusterId': vmwareClusterId,
      'vmwareNodePoolId': vmwareNodePoolId,
    };
  }

  factory GetVmwareNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetVmwareNodePoolArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      view: map['view'] == null ? null : map['view'] as String,
      vmwareClusterId: map['vmwareClusterId'] as String,
      vmwareNodePoolId: map['vmwareNodePoolId'] as String,
    );
  }
}
