// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkeonprem_v1_get_vmware_cluster_args_doc}
/// Arguments for getVmwareCluster.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_get_vmware_cluster_args_doc}
class GetVmwareClusterArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;
  final pulumi.Input<String> vmwareClusterId;

  /// Creates a new [GetVmwareClusterArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  /// [vmwareClusterId] Required.
  GetVmwareClusterArgs({
    required String location,
    String? project,
    String? view,
    required String vmwareClusterId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      view = pulumi.Input.asOptionalInput<String>(view),
      vmwareClusterId = pulumi.Input.asInput<String>(vmwareClusterId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'view': ?view,
      'vmwareClusterId': vmwareClusterId,
    };
  }

  factory GetVmwareClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetVmwareClusterArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      view: map['view'] == null ? null : map['view'] as String,
      vmwareClusterId: map['vmwareClusterId'] as String,
    );
  }
}

