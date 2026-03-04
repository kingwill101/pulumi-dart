// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_ecs_invocation_ecs_invocation_args_doc}
/// The set of arguments for EcsInvocation.
/// {@endtemplate}
/// {@macro pulumi_ecs_ecs_invocation_ecs_invocation_args_doc}
class EcsInvocationArgs {
  /// The ID of the command.
  final pulumi.Input<String> commandId;

  /// The schedule on which the recurring execution of the command takes place. Take note of the following items:
  /// * The interval between two consecutive executions must be 10 seconds or longer. The minimum interval cannot be less than the timeout period of the execution.
  /// * When you set Timed to true, you must specify Frequency.
  /// * The value of the Frequency parameter is a cron expression. For more information, see [Cron expression](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/cron-expression).
  final pulumi.Input<String>? frequency;

  /// The list of instances to execute the command. You can specify up to 50 instance IDs.
  final pulumi.Input<List<String>> instanceIds;

  /// The key-value pairs of custom parameters to be passed in when the custom parameter feature is enabled.  Number of custom parameters: 0 to 10.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Specifies how to run the command. Valid values: `Once`, `Period`, `NextRebootOnly`, `EveryReboot`. Default value: When `timed` is set to false and Frequency is not specified, the default value of `repeat_mode` is `Once`. When `Timed` is set to true and Frequency is specified, `period` is used as the value of RepeatMode regardless of whether `repeat_mode` is specified.
  final pulumi.Input<String>? repeatMode;

  /// Specifies whether to periodically run the command. Default value: `false`.
  final pulumi.Input<bool>? timed;

  /// The username that is used to run the command on the ECS instance.
  /// * For Linux instances, the root username is used.
  /// * For Windows instances, the System username is used.
  /// * You can also specify other usernames that already exist in the ECS instance to run the command. It is more secure to run Cloud Assistant commands as a regular user. For more information, see [Configure a regular user to run Cloud Assistant commands](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/run-cloud-assistant-commands-as-a-regular-user).
  final pulumi.Input<String>? username;

  /// The name of the password used to run the command on a Windows instance.
  final pulumi.Input<String>? windowsPasswordName;

  /// Creates a new [EcsInvocationArgs].
  /// [commandId] The ID of the command.
  /// [frequency] The schedule on which the recurring execution of the command takes place. Take note of the following items:
  /// [instanceIds] The list of instances to execute the command. You can specify up to 50 instance IDs.
  /// [parameters] The key-value pairs of custom parameters to be passed in when the custom parameter feature is enabled.  Number of custom parameters: 0 to 10.
  /// [repeatMode] Specifies how to run the command. Valid values: `Once`, `Period`, `NextRebootOnly`, `EveryReboot`. Default value: When `timed` is set to false and Frequency is not specified, the default value of `repeat_mode` is `Once`. When `Timed` is set to true and Frequency is specified, `period` is used as the value of RepeatMode regardless of whether `repeat_mode` is specified.
  /// [timed] Specifies whether to periodically run the command. Default value: `false`.
  /// [username] The username that is used to run the command on the ECS instance.
  /// [windowsPasswordName] The name of the password used to run the command on a Windows instance.
  EcsInvocationArgs({
    required this.commandId,
    this.frequency,
    required this.instanceIds,
    this.parameters,
    this.repeatMode,
    this.timed,
    this.username,
    this.windowsPasswordName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandId': commandId,
      'frequency': ?frequency,
      'instanceIds': instanceIds,
      'parameters': ?parameters,
      'repeatMode': ?repeatMode,
      'timed': ?timed,
      'username': ?username,
      'windowsPasswordName': ?windowsPasswordName,
    };
  }

  factory EcsInvocationArgs.fromMap(Map<String, dynamic> map) {
    return EcsInvocationArgs(
      commandId: pulumi.Input.fromValue(map['commandId'] as String),
      frequency: (() {
        final guardedValue = map['frequency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceIds: pulumi.Input.fromValue(
        (map['instanceIds'] as List).cast<String>(),
      ),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      repeatMode: (() {
        final guardedValue = map['repeatMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timed: (() {
        final guardedValue = map['timed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      windowsPasswordName: (() {
        final guardedValue = map['windowsPasswordName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
