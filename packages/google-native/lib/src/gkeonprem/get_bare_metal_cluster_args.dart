// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkeonprem_v1_get_bare_metal_cluster_args_doc}
/// Arguments for getBareMetalCluster.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_get_bare_metal_cluster_args_doc}
class GetBareMetalClusterArgs {
  final pulumi.Input<String> bareMetalClusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetBareMetalClusterArgs].
  /// [bareMetalClusterId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  GetBareMetalClusterArgs({
    required String bareMetalClusterId,
    required String location,
    String? project,
    String? view,
  }) :
      bareMetalClusterId = pulumi.Input.asInput<String>(bareMetalClusterId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bareMetalClusterId': bareMetalClusterId,
      'location': location,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetBareMetalClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetBareMetalClusterArgs(
      bareMetalClusterId: map['bareMetalClusterId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}

