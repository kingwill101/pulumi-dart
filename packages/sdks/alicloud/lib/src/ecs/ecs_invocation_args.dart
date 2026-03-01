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
    required pulumi.Output<String> commandId,
    pulumi.Output<String>? frequency,
    required pulumi.Output<List<String>> instanceIds,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? repeatMode,
    pulumi.Output<bool>? timed,
    pulumi.Output<String>? username,
    pulumi.Output<String>? windowsPasswordName,
  }) :
      commandId = pulumi.Input.asInput<String>(commandId),
      frequency = pulumi.Input.asOptionalInput<String>(frequency),
      instanceIds = pulumi.Input.asInput<List<String>>(instanceIds),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      repeatMode = pulumi.Input.asOptionalInput<String>(repeatMode),
      timed = pulumi.Input.asOptionalInput<bool>(timed),
      username = pulumi.Input.asOptionalInput<String>(username),
      windowsPasswordName = pulumi.Input.asOptionalInput<String>(windowsPasswordName);

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
      commandId: pulumi.Output.create<String>(map['commandId'] as String),
      frequency: map['frequency'] == null ? null : pulumi.Output.create<String>(map['frequency'] as String),
      instanceIds: pulumi.Output.create<List<String>>((map['instanceIds'] as List).cast<String>()),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      repeatMode: map['repeatMode'] == null ? null : pulumi.Output.create<String>(map['repeatMode'] as String),
      timed: map['timed'] == null ? null : pulumi.Output.create<bool>(map['timed'] as bool),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
      windowsPasswordName: map['windowsPasswordName'] == null ? null : pulumi.Output.create<String>(map['windowsPasswordName'] as String),
    );
  }
}

