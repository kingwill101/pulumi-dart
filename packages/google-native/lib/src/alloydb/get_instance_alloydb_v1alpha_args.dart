// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alloydb_v1alpha_get_instance_alloydb_v1alpha_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1alpha_get_instance_alloydb_v1alpha_args_doc}
class GetInstanceAlloydbV1alphaArgs {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetInstanceAlloydbV1alphaArgs].
  /// [clusterId] Required.
  /// [instanceId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  GetInstanceAlloydbV1alphaArgs({
    required String clusterId,
    required String instanceId,
    required String location,
    String? project,
    String? view,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'instanceId': instanceId,
      'location': location,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetInstanceAlloydbV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceAlloydbV1alphaArgs(
      clusterId: map['clusterId'] as String,
      instanceId: map['instanceId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}

