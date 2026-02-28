// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tpu_v1_get_node_args_doc}
/// Arguments for getNode.
/// {@endtemplate}
/// {@macro pulumi_tpu_v1_get_node_args_doc}
class GetNodeArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> nodeId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNodeArgs].
  /// [location] Required.
  /// [nodeId] Required.
  /// [project] Optional.
  GetNodeArgs({
    required String location,
    required String nodeId,
    String? project,
  })  : location = pulumi.Input.asInput<String>(location),
        nodeId = pulumi.Input.asInput<String>(nodeId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['nodeId'] = nodeId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNodeArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeArgs(
      location: map['location'] as String,
      nodeId: map['nodeId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
