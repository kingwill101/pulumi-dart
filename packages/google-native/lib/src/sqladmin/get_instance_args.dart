// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sqladmin_v1_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1_get_instance_args_doc}
class GetInstanceArgs {
  final pulumi.Input<String> instance;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceArgs].
  /// [instance] Required.
  /// [project] Optional.
  GetInstanceArgs({
    required String instance,
    String? project,
  })  : instance = pulumi.Input.asInput<String>(instance),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instance'] = instance;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      instance: map['instance'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
