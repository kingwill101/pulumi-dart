// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_labservices_get_schedule_args_doc}
/// Arguments for getSchedule.
/// {@endtemplate}
/// {@macro pulumi_labservices_get_schedule_args_doc}
class GetScheduleArgs {
  /// The name of the lab that uniquely identifies it within containing lab plan. Used in resource URIs.
  final pulumi.Input<String> labName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the schedule that uniquely identifies it within containing lab. Used in resource URIs.
  final pulumi.Input<String> scheduleName;

  /// Creates a new [GetScheduleArgs].
  /// [labName] The name of the lab that uniquely identifies it within containing lab plan. Used in resource URIs.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scheduleName] The name of the schedule that uniquely identifies it within containing lab. Used in resource URIs.
  GetScheduleArgs({
    required String labName,
    required String resourceGroupName,
    required String scheduleName,
  }) :
      labName = pulumi.Input.asInput<String>(labName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scheduleName = pulumi.Input.asInput<String>(scheduleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labName': labName,
      'resourceGroupName': resourceGroupName,
      'scheduleName': scheduleName,
    };
  }

  factory GetScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GetScheduleArgs(
      labName: map['labName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scheduleName: map['scheduleName'] as String,
    );
  }
}

