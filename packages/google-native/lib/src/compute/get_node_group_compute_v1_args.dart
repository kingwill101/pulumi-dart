// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_node_group_compute_v1_args_doc}
/// Arguments for getNodeGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_node_group_compute_v1_args_doc}
class GetNodeGroupComputeV1Args {
  final pulumi.Input<String> nodeGroup;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetNodeGroupComputeV1Args].
  /// [nodeGroup] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetNodeGroupComputeV1Args({
    required String nodeGroup,
    String? project,
    required String zone,
  })  : nodeGroup = pulumi.Input.asInput<String>(nodeGroup),
        project = pulumi.Input.asOptionalInput<String>(project),
        zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodeGroup'] = nodeGroup;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory GetNodeGroupComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupComputeV1Args(
      nodeGroup: map['nodeGroup'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}
