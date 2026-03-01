// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracledatabase_get_cloud_vm_cluster_get_cloud_vm_cluster_args_doc}
/// Arguments for getCloudVmCluster.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_get_cloud_vm_cluster_get_cloud_vm_cluster_args_doc}
class GetCloudVmClusterArgs {
  /// The ID of the VM Cluster.
  final pulumi.Input<String> cloudVmClusterId;

  /// The location of the resource.
  ///
  /// - - -
  final pulumi.Input<String> location;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetCloudVmClusterArgs].
  /// [cloudVmClusterId] The ID of the VM Cluster.
  /// [location] The location of the resource.
  /// [project] The project in which the resource belongs. If it
  GetCloudVmClusterArgs({
    required String cloudVmClusterId,
    required String location,
    String? project,
  }) : cloudVmClusterId = pulumi.Input.asInput<String>(cloudVmClusterId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudVmClusterId': cloudVmClusterId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCloudVmClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClusterArgs(
      cloudVmClusterId: map['cloudVmClusterId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
