// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkeonprem_v1_get_bare_metal_admin_cluster_args_doc}
/// Arguments for getBareMetalAdminCluster.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_get_bare_metal_admin_cluster_args_doc}
class GetBareMetalAdminClusterArgs {
  final pulumi.Input<String> bareMetalAdminClusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetBareMetalAdminClusterArgs].
  /// [bareMetalAdminClusterId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  GetBareMetalAdminClusterArgs({
    required String bareMetalAdminClusterId,
    required String location,
    String? project,
    String? view,
  })  : bareMetalAdminClusterId =
            pulumi.Input.asInput<String>(bareMetalAdminClusterId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bareMetalAdminClusterId'] = bareMetalAdminClusterId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetBareMetalAdminClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetBareMetalAdminClusterArgs(
      bareMetalAdminClusterId: map['bareMetalAdminClusterId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}
