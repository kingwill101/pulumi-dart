// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EcsInvocation resources.
class EcsInvocationState {
  /// The ID of the command.
  final pulumi.Input<String>? commandId;
  /// The schedule on which the recurring execution of the command takes place. Take note of the following items:
  /// * The interval between two consecutive executions must be 10 seconds or longer. The minimum interval cannot be less than the timeout period of the execution.
  /// * When you set Timed to true, you must specify Frequency.
  /// * The value of the Frequency parameter is a cron expression. For more information, see [Cron expression](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/cron-expression).
  final pulumi.Input<String>? frequency;
  /// The list of instances to execute the command. You can specify up to 50 instance IDs.
  final pulumi.Input<List<String>>? instanceIds;
  /// The key-value pairs of custom parameters to be passed in when the custom parameter feature is enabled.  Number of custom parameters: 0 to 10.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Specifies how to run the command. Valid values: `Once`, `Period`, `NextRebootOnly`, `EveryReboot`. Default value: When `timed` is set to false and Frequency is not specified, the default value of `repeat_mode` is `Once`. When `Timed` is set to true and Frequency is specified, `period` is used as the value of RepeatMode regardless of whether `repeat_mode` is specified.
  final pulumi.Input<String>? repeatMode;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// Specifies whether to periodically run the command. Default value: `false`.
  final pulumi.Input<bool>? timed;
  /// The username that is used to run the command on the ECS instance.
  /// * For Linux instances, the root username is used.
  /// * For Windows instances, the System username is used.
  /// * You can also specify other usernames that already exist in the ECS instance to run the command. It is more secure to run Cloud Assistant commands as a regular user. For more information, see [Configure a regular user to run Cloud Assistant commands](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/run-cloud-assistant-commands-as-a-regular-user).
  final pulumi.Input<String>? username;
  /// The name of the password used to run the command on a Windows instance.
  final pulumi.Input<String>? windowsPasswordName;

  /// Creates a new [EcsInvocationState].
  /// [commandId] The ID of the command.
  /// [frequency] The schedule on which the recurring execution of the command takes place. Take note of the following items:
  /// [instanceIds] The list of instances to execute the command. You can specify up to 50 instance IDs.
  /// [parameters] The key-value pairs of custom parameters to be passed in when the custom parameter feature is enabled.  Number of custom parameters: 0 to 10.
  /// [repeatMode] Specifies how to run the command. Valid values: `Once`, `Period`, `NextRebootOnly`, `EveryReboot`. Default value: When `timed` is set to false and Frequency is not specified, the default value of `repeat_mode` is `Once`. When `Timed` is set to true and Frequency is specified, `period` is used as the value of RepeatMode regardless of whether `repeat_mode` is specified.
  /// [status] The status of the resource.
  /// [timed] Specifies whether to periodically run the command. Default value: `false`.
  /// [username] The username that is used to run the command on the ECS instance.
  /// [windowsPasswordName] The name of the password used to run the command on a Windows instance.
  EcsInvocationState({
    this.commandId,
    this.frequency,
    this.instanceIds,
    this.parameters,
    this.repeatMode,
    this.status,
    this.timed,
    this.username,
    this.windowsPasswordName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandId': ?commandId,
      'frequency': ?frequency,
      'instanceIds': ?instanceIds,
      'parameters': ?parameters,
      'repeatMode': ?repeatMode,
      'status': ?status,
      'timed': ?timed,
      'username': ?username,
      'windowsPasswordName': ?windowsPasswordName,
    };
  }

  factory EcsInvocationState.fromMap(Map<String, dynamic> map) {
    return EcsInvocationState(
      commandId: map['commandId'] == null ? null : (map['commandId']! as String).input(),
      frequency: map['frequency'] == null ? null : (map['frequency']! as String).input(),
      instanceIds: map['instanceIds'] == null ? null : ((map['instanceIds']! as List).cast<String>()).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
      repeatMode: map['repeatMode'] == null ? null : (map['repeatMode']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      timed: map['timed'] == null ? null : (map['timed']! as bool).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
      windowsPasswordName: map['windowsPasswordName'] == null ? null : (map['windowsPasswordName']! as String).input(),
    );
  }
}

