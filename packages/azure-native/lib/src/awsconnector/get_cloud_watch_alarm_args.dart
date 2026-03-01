// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_cloud_watch_alarm_args_doc}
/// Arguments for getCloudWatchAlarm.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_cloud_watch_alarm_args_doc}
class GetCloudWatchAlarmArgs {
  /// Name of CloudWatchAlarm
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCloudWatchAlarmArgs].
  /// [name] Name of CloudWatchAlarm
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCloudWatchAlarmArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCloudWatchAlarmArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudWatchAlarmArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

