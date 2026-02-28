// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkeonprem_v1_get_bare_metal_node_pool_args_doc}
/// Arguments for getBareMetalNodePool.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_get_bare_metal_node_pool_args_doc}
class GetBareMetalNodePoolArgs {
  final pulumi.Input<String> bareMetalClusterId;
  final pulumi.Input<String> bareMetalNodePoolId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetBareMetalNodePoolArgs].
  /// [bareMetalClusterId] Required.
  /// [bareMetalNodePoolId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  GetBareMetalNodePoolArgs({
    required String bareMetalClusterId,
    required String bareMetalNodePoolId,
    required String location,
    String? project,
    String? view,
  }) :
      bareMetalClusterId = pulumi.Input.asInput<String>(bareMetalClusterId),
      bareMetalNodePoolId = pulumi.Input.asInput<String>(bareMetalNodePoolId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bareMetalClusterId': bareMetalClusterId,
      'bareMetalNodePoolId': bareMetalNodePoolId,
      'location': location,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetBareMetalNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetBareMetalNodePoolArgs(
      bareMetalClusterId: map['bareMetalClusterId'] as String,
      bareMetalNodePoolId: map['bareMetalNodePoolId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}

