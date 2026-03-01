// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_invocations_invocation_invoke_instance.dart';

class GetEcsInvocationsInvocation {
  /// The Base64-encoded command content.
  final String commandContent;
  /// The ID of the command.
  final String commandId;
  /// The name of the command.
  final String commandName;
  /// The type of the command.
  final String commandType;
  /// The creation time of the resource.
  final String createTime;
  /// The schedule on which the recurring execution of the command takes place. For information about the value specifications, see [Cron expression](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/cron-expression).
  final String frequency;
  /// The ID of the Invocation.
  final String id;
  /// The ID of the Invocation.
  final String invocationId;
  /// The overall execution state of the command. The value of this parameter depends on the execution states on all the involved instances.
  final String invocationStatus;
  /// Execute target instance set type.
  final List<GetEcsInvocationsInvocationInvokeInstance> invokeInstances;
  /// The overall execution state of the command. **Note:** We recommend that you ignore this parameter and check the value of the `invocation_status` response parameter for the overall execution state.
  final String invokeStatus;
  /// The custom parameters in the command.
  final String parameters;
  /// Indicates the execution mode of the command.
  final String repeatMode;
  /// Indicates whether the commands are to be automatically run.
  final bool timed;
  /// The username that was used to run the command on the instance.
  final String username;

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
  GetEcsInvocationsInvocation({
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
      'invokeInstances': pulumi.Input.encodeList<GetEcsInvocationsInvocationInvokeInstance, Map<String, dynamic>>(invokeInstances, (value) => value.toMap()),
      'invokeStatus': invokeStatus,
      'parameters': parameters,
      'repeatMode': repeatMode,
      'timed': timed,
      'username': username,
    };
  }

  factory GetEcsInvocationsInvocation.fromMap(Map<String, dynamic> map) {
    return GetEcsInvocationsInvocation(
      commandContent: map['commandContent'] as String,
      commandId: map['commandId'] as String,
      commandName: map['commandName'] as String,
      commandType: map['commandType'] as String,
      createTime: map['createTime'] as String,
      frequency: map['frequency'] as String,
      id: map['id'] as String,
      invocationId: map['invocationId'] as String,
      invocationStatus: map['invocationStatus'] as String,
      invokeInstances: pulumi.Input.decodeList<GetEcsInvocationsInvocationInvokeInstance>(map['invokeInstances'], (value) => GetEcsInvocationsInvocationInvokeInstance.fromMap((value as Map).cast<String, dynamic>())),
      invokeStatus: map['invokeStatus'] as String,
      parameters: map['parameters'] as String,
      repeatMode: map['repeatMode'] as String,
      timed: map['timed'] as bool,
      username: map['username'] as String,
    );
  }
}

