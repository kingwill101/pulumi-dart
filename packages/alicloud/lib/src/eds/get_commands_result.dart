// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_commands_command.dart';

/// Result data returned by getCommands.
class GetCommandsResult {
  final String? commandType;
  final List<GetCommandsCommand> commands;
  final String? contentEncoding;
  final String? desktopId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetCommandsResult].
  /// [commandType] Optional.
  /// [commands] Required.
  /// [contentEncoding] Optional.
  /// [desktopId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  GetCommandsResult({
    this.commandType,
    required this.commands,
    this.contentEncoding,
    this.desktopId,
    required this.id,
    required this.ids,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandType': ?commandType,
      'commands': pulumi.Input.encodeList<GetCommandsCommand, Map<String, dynamic>>(commands, (value) => value.toMap()),
      'contentEncoding': ?contentEncoding,
      'desktopId': ?desktopId,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetCommandsResult.fromMap(Map<String, dynamic> map) {
    return GetCommandsResult(
      commandType: map['commandType'] == null ? null : map['commandType'] as String,
      commands: pulumi.Input.decodeList<GetCommandsCommand>(map['commands'], (value) => GetCommandsCommand.fromMap((value as Map).cast<String, dynamic>())),
      contentEncoding: map['contentEncoding'] == null ? null : map['contentEncoding'] as String,
      desktopId: map['desktopId'] == null ? null : map['desktopId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

