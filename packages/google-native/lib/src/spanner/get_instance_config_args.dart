// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_spanner_v1_get_instance_config_args_doc}
/// Arguments for getInstanceConfig.
/// {@endtemplate}
/// {@macro pulumi_spanner_v1_get_instance_config_args_doc}
class GetInstanceConfigArgs {
  final pulumi.Input<String> instanceConfigId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceConfigArgs].
  /// [instanceConfigId] Required.
  /// [project] Optional.
  GetInstanceConfigArgs({
    required String instanceConfigId,
    String? project,
  })  : instanceConfigId = pulumi.Input.asInput<String>(instanceConfigId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceConfigId'] = instanceConfigId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInstanceConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceConfigArgs(
      instanceConfigId: map['instanceConfigId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
