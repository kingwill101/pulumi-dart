// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notebooks_v2_get_instance_notebooks_v2_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_notebooks_v2_get_instance_notebooks_v2_args_doc}
class GetInstanceNotebooksV2Args {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceNotebooksV2Args].
  /// [instanceId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetInstanceNotebooksV2Args({
    required String instanceId,
    required String location,
    String? project,
  })  : instanceId = pulumi.Input.asInput<String>(instanceId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInstanceNotebooksV2Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceNotebooksV2Args(
      instanceId: map['instanceId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
