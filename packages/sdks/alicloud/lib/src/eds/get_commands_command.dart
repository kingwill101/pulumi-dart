// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_commands_command_invoke_desktop.dart';

class GetCommandsCommand {
  /// The Contents of the Script to Base64 Encoded Transmission.
  final String commandContent;
  /// The Script Type. Valid values: `RunBatScript`, `RunPowerShellScript`.
  final String commandType;
  /// The Task of Creation Time.
  final String createTime;
  /// The ID of the Command.
  final String id;
  /// The Implementation of the Target Cloud Desktop Collection.
  final List<GetCommandsCommandInvokeDesktop> invokeDesktops;
  /// The invoke id of the Command.
  final String invokeId;
  /// Script Is Executed in the Overall Implementation of the State. Valid values: `Pending`, `Failed`, `PartialFailed`, `Running`, `Stopped`, `Stopping`, `Finished`, `Success`.
  final String status;

  /// Creates a new [GetCommandsCommand].
  /// [commandContent] The Contents of the Script to Base64 Encoded Transmission.
  /// [commandType] The Script Type. Valid values: `RunBatScript`, `RunPowerShellScript`.
  /// [createTime] The Task of Creation Time.
  /// [id] The ID of the Command.
  /// [invokeDesktops] The Implementation of the Target Cloud Desktop Collection.
  /// [invokeId] The invoke id of the Command.
  /// [status] Script Is Executed in the Overall Implementation of the State. Valid values: `Pending`, `Failed`, `PartialFailed`, `Running`, `Stopped`, `Stopping`, `Finished`, `Success`.
  GetCommandsCommand({
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
      'invokeDesktops': pulumi.Input.encodeList<GetCommandsCommandInvokeDesktop, Map<String, dynamic>>(invokeDesktops, (value) => value.toMap()),
      'invokeId': invokeId,
      'status': status,
    };
  }

  factory GetCommandsCommand.fromMap(Map<String, dynamic> map) {
    return GetCommandsCommand(
      commandContent: map['commandContent'] as String,
      commandType: map['commandType'] as String,
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      invokeDesktops: pulumi.Input.decodeList<GetCommandsCommandInvokeDesktop>(map['invokeDesktops'], (value) => GetCommandsCommandInvokeDesktop.fromMap((value as Map).cast<String, dynamic>())),
      invokeId: map['invokeId'] as String,
      status: map['status'] as String,
    );
  }
}

