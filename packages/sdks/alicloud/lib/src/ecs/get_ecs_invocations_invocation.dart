// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_invocations_invocation_invoke_instance.dart';

class GetEcsInvocationsInvocation {
  /// The Base64-encoded command content.
  final pulumi.Input<String> commandContent;
  /// The ID of the command.
  final pulumi.Input<String> commandId;
  /// The name of the command.
  final pulumi.Input<String> commandName;
  /// The type of the command.
  final pulumi.Input<String> commandType;
  /// The creation time of the resource.
  final pulumi.Input<String> createTime;
  /// The schedule on which the recurring execution of the command takes place. For information about the value specifications, see [Cron expression](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/cron-expression).
  final pulumi.Input<String> frequency;
  /// The ID of the Invocation.
  final pulumi.Input<String> id;
  /// The ID of the Invocation.
  final pulumi.Input<String> invocationId;
  /// The overall execution state of the command. The value of this parameter depends on the execution states on all the involved instances.
  final pulumi.Input<String> invocationStatus;
  /// Execute target instance set type.
  final pulumi.Input<List<GetEcsInvocationsInvocationInvokeInstance>> invokeInstances;
  /// The overall execution state of the command. **Note:** We recommend that you ignore this parameter and check the value of the `invocation_status` response parameter for the overall execution state.
  final pulumi.Input<String> invokeStatus;
  /// The custom parameters in the command.
  final pulumi.Input<String> parameters;
  /// Indicates the execution mode of the command.
  final pulumi.Input<String> repeatMode;
  /// Indicates whether the commands are to be automatically run.
  final pulumi.Input<bool> timed;
  /// The username that was used to run the command on the instance.
  final pulumi.Input<String> username;

  /// Creates a new [GetEcsInvocationsInvocation].
  /// [commandContent] The Base64-encoded command content.
  /// [commandId] The ID of the command.
  /// [commandName] The name of the command.
  /// [commandType] The type of the command.
  /// [createTime] The creation time of the resource.
  /// [frequency] The schedule on which the recurring execution of the command takes place. For information about the value specifications, see [Cron expression](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/cron-expression).
  /// [id] The ID of the Invocation.
  /// [invocationId] The ID of the Invocation.
  /// [invocationStatus] The overall execution state of the command. The value of this parameter depends on the execution states on all the involved instances.
  /// [invokeInstances] Execute target instance set type.
  /// [invokeStatus] The overall execution state of the command. **Note:** We recommend that you ignore this parameter and check the value of the `invocation_status` response parameter for the overall execution state.
  /// [parameters] The custom parameters in the command.
  /// [repeatMode] Indicates the execution mode of the command.
  /// [timed] Indicates whether the commands are to be automatically run.
  /// [username] The username that was used to run the command on the instance.
  const GetEcsInvocationsInvocation({
    required this.commandContent,
    required this.commandId,
    required this.commandName,
    required this.commandType,
    required this.createTime,
    required this.frequency,
    required this.id,
    required this.invocationId,
    required this.invocationStatus,
    required this.invokeInstances,
    required this.invokeStatus,
    required this.parameters,
    required this.repeatMode,
    required this.timed,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandContent': commandContent,
      'commandId': commandId,
      'commandName': commandName,
      'commandType': commandType,
      'createTime': createTime,
      'frequency': frequency,
      'id': id,
      'invocationId': invocationId,
      'invocationStatus': invocationStatus,
      'invokeInstances': pulumi.Input.mapInputValue<List<GetEcsInvocationsInvocationInvokeInstance>, List<Map<String, dynamic>>>(invokeInstances, (value) => pulumi.Input.encodeList<GetEcsInvocationsInvocationInvokeInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'invokeStatus': invokeStatus,
      'parameters': parameters,
      'repeatMode': repeatMode,
      'timed': timed,
      'username': username,
    };
  }

  factory GetEcsInvocationsInvocation.fromMap(Map<String, dynamic> map) {
    return GetEcsInvocationsInvocation(
      commandContent: pulumi.Input.fromValue(map['commandContent'] as String),
      commandId: pulumi.Input.fromValue(map['commandId'] as String),
      commandName: pulumi.Input.fromValue(map['commandName'] as String),
      commandType: pulumi.Input.fromValue(map['commandType'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      invocationId: pulumi.Input.fromValue(map['invocationId'] as String),
      invocationStatus: pulumi.Input.fromValue(map['invocationStatus'] as String),
      invokeInstances: pulumi.Input.fromValue(pulumi.Input.decodeList<GetEcsInvocationsInvocationInvokeInstance>(map['invokeInstances']!, (value) => GetEcsInvocationsInvocationInvokeInstance.fromMap((value as Map).cast<String, dynamic>()))),
      invokeStatus: pulumi.Input.fromValue(map['invokeStatus'] as String),
      parameters: pulumi.Input.fromValue(map['parameters'] as String),
      repeatMode: pulumi.Input.fromValue(map['repeatMode'] as String),
      timed: pulumi.Input.fromValue(map['timed'] as bool),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

