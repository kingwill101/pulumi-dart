// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_node_group_args_doc}
/// Arguments for getNodeGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_node_group_args_doc}
class GetNodeGroupArgs {
  final pulumi.Input<String> nodeGroup;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetNodeGroupArgs].
  /// [nodeGroup] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetNodeGroupArgs({
    required String nodeGroup,
    String? project,
    required String zone,
  }) : nodeGroup = pulumi.Input.asInput<String>(nodeGroup),
       project = pulumi.Input.asOptionalInput<String>(project),
       zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeGroup': nodeGroup,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetNodeGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupArgs(
      nodeGroup: map['nodeGroup'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}
