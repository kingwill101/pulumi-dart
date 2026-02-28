// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkebackup_v1_get_restore_plan_args_doc}
/// Arguments for getRestorePlan.
/// {@endtemplate}
/// {@macro pulumi_gkebackup_v1_get_restore_plan_args_doc}
class GetRestorePlanArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> restorePlanId;

  /// Creates a new [GetRestorePlanArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [restorePlanId] Required.
  GetRestorePlanArgs({
    required String location,
    String? project,
    required String restorePlanId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        restorePlanId = pulumi.Input.asInput<String>(restorePlanId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['restorePlanId'] = restorePlanId;
    return map;
  }

  factory GetRestorePlanArgs.fromMap(Map<String, dynamic> map) {
    return GetRestorePlanArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      restorePlanId: map['restorePlanId'] as String,
    );
  }
}
