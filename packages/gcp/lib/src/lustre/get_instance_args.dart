// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lustre_get_instance_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_lustre_get_instance_get_instance_args_doc}
class GetInstanceArgs {
  /// The instance id of the Lustre instance.
  final pulumi.Input<String> instanceId;

  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The ID of the zone in which the resource belongs. If it is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetInstanceArgs].
  /// [instanceId] The instance id of the Lustre instance.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  /// [zone] The ID of the zone in which the resource belongs. If it is not provided, the provider zone is used.
  GetInstanceArgs({
    required String instanceId,
    String? project,
    String? zone,
  })  : instanceId = pulumi.Input.asInput<String>(instanceId),
        project = pulumi.Input.asOptionalInput<String>(project),
        zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      instanceId: map['instanceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
