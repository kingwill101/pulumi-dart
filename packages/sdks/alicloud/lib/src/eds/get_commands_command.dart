// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_commands_command_invoke_desktop.dart';

class GetCommandsCommand {
  /// The Contents of the Script to Base64 Encoded Transmission.
  final pulumi.Input<String> commandContent;
  /// The Script Type. Valid values: `RunBatScript`, `RunPowerShellScript`.
  final pulumi.Input<String> commandType;
  /// The Task of Creation Time.
  final pulumi.Input<String> createTime;
  /// The ID of the Command.
  final pulumi.Input<String> id;
  /// The Implementation of the Target Cloud Desktop Collection.
  final pulumi.Input<List<GetCommandsCommandInvokeDesktop>> invokeDesktops;
  /// The invoke id of the Command.
  final pulumi.Input<String> invokeId;
  /// Script Is Executed in the Overall Implementation of the State. Valid values: `Pending`, `Failed`, `PartialFailed`, `Running`, `Stopped`, `Stopping`, `Finished`, `Success`.
  final pulumi.Input<String> status;

  /// Creates a new [GetCommandsCommand].
  /// [commandContent] The Contents of the Script to Base64 Encoded Transmission.
  /// [commandType] The Script Type. Valid values: `RunBatScript`, `RunPowerShellScript`.
  /// [createTime] The Task of Creation Time.
  /// [id] The ID of the Command.
  /// [invokeDesktops] The Implementation of the Target Cloud Desktop Collection.
  /// [invokeId] The invoke id of the Command.
  /// [status] Script Is Executed in the Overall Implementation of the State. Valid values: `Pending`, `Failed`, `PartialFailed`, `Running`, `Stopped`, `Stopping`, `Finished`, `Success`.
  const GetCommandsCommand({
    required this.commandContent,
    required this.commandType,
    required this.createTime,
    required this.id,
    required this.invokeDesktops,
    required this.invokeId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandContent': commandContent,
      'commandType': commandType,
      'createTime': createTime,
      'id': id,
      'invokeDesktops': pulumi.Input.mapInputValue<List<GetCommandsCommandInvokeDesktop>, List<Map<String, dynamic>>>(invokeDesktops, (value) => pulumi.Input.encodeList<GetCommandsCommandInvokeDesktop, Map<String, dynamic>>(value, (value) => value.toMap())),
      'invokeId': invokeId,
      'status': status,
    };
  }

  factory GetCommandsCommand.fromMap(Map<String, dynamic> map) {
    return GetCommandsCommand(
      commandContent: pulumi.Input.fromValue(map['commandContent'] as String),
      commandType: pulumi.Input.fromValue(map['commandType'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      invokeDesktops: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCommandsCommandInvokeDesktop>(map['invokeDesktops']!, (value) => GetCommandsCommandInvokeDesktop.fromMap((value as Map).cast<String, dynamic>()))),
      invokeId: pulumi.Input.fromValue(map['invokeId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

