// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_activity_log_alert_args_doc}
/// Arguments for getActivityLogAlert.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_activity_log_alert_args_doc}
class GetActivityLogAlertArgs {
  /// The name of the Activity Log Alert rule.
  final pulumi.Input<String> activityLogAlertName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetActivityLogAlertArgs].
  /// [activityLogAlertName] The name of the Activity Log Alert rule.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetActivityLogAlertArgs({
    required this.activityLogAlertName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityLogAlertName': activityLogAlertName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetActivityLogAlertArgs.fromMap(Map<String, dynamic> map) {
    return GetActivityLogAlertArgs(
      activityLogAlertName: pulumi.Input.fromValue(map['activityLogAlertName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

