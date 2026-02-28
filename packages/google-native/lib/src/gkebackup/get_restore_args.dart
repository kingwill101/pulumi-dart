// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkebackup_v1_get_restore_args_doc}
/// Arguments for getRestore.
/// {@endtemplate}
/// {@macro pulumi_gkebackup_v1_get_restore_args_doc}
class GetRestoreArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> restoreId;
  final pulumi.Input<String> restorePlanId;

  /// Creates a new [GetRestoreArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [restoreId] Required.
  /// [restorePlanId] Required.
  GetRestoreArgs({
    required String location,
    String? project,
    required String restoreId,
    required String restorePlanId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      restoreId = pulumi.Input.asInput<String>(restoreId),
      restorePlanId = pulumi.Input.asInput<String>(restorePlanId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'restoreId': restoreId,
      'restorePlanId': restorePlanId,
    };
  }

  factory GetRestoreArgs.fromMap(Map<String, dynamic> map) {
    return GetRestoreArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      restoreId: map['restoreId'] as String,
      restorePlanId: map['restorePlanId'] as String,
    );
  }
}

