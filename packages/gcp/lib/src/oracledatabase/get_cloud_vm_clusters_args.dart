// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracledatabase_get_cloud_vm_clusters_get_cloud_vm_clusters_args_doc}
/// Arguments for getCloudVmClusters.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_get_cloud_vm_clusters_get_cloud_vm_clusters_args_doc}
class GetCloudVmClustersArgs {
  /// The location of the resource.
  ///
  /// - - -
  final pulumi.Input<String> location;

  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetCloudVmClustersArgs].
  /// [location] The location of the resource.
  /// [project] The project to which the resource belongs. If it
  GetCloudVmClustersArgs({
    required String location,
    String? project,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCloudVmClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClustersArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
