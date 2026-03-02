// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_commands_command.dart';

/// Result data returned by getCommands.
class GetCommandsResult {
  final String? commandProvider;
  final List<GetCommandsCommand> commands;
  final String? contentEncoding;
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? name;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? type;

  /// Creates a new [GetCommandsResult].
  /// [commandProvider] Optional.
  /// [commands] Required.
  /// [contentEncoding] Optional.
  /// [description] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [name] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [type] Optional.
  GetCommandsResult({
    this.commandProvider,
    required this.commands,
    this.contentEncoding,
    this.description,
    required this.id,
    required this.ids,
    this.name,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandProvider': ?commandProvider,
      'commands': pulumi.Input.encodeList<GetCommandsCommand, Map<String, dynamic>>(commands, (value) => value.toMap()),
      'contentEncoding': ?contentEncoding,
      'description': ?description,
      'id': id,
      'ids': ids,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'type': ?type,
    };
  }

  factory GetCommandsResult.fromMap(Map<String, dynamic> map) {
    return GetCommandsResult(
      commandProvider: map['commandProvider'] == null ? null : map['commandProvider']! as String,
      commands: pulumi.Input.decodeList<GetCommandsCommand>(map['commands'], (value) => GetCommandsCommand.fromMap((value as Map).cast<String, dynamic>())),
      contentEncoding: map['contentEncoding'] == null ? null : map['contentEncoding']! as String,
      description: map['description'] == null ? null : map['description']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name']! as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      type: map['type'] == null ? null : map['type']! as String,
    );
  }
}

