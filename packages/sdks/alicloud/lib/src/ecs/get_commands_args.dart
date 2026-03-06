// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_commands_get_commands_args_doc}
/// Arguments for getCommands.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_commands_get_commands_args_doc}
class GetCommandsArgs {
  /// Public order provider.
  final pulumi.Input<String>? commandProvider;
  /// The Base64-encoded content of the command.
  final pulumi.Input<String>? contentEncoding;
  /// The description of command.
  final pulumi.Input<String>? description;
  /// A list of Command IDs.
  final pulumi.Input<List<String>>? ids;
  /// The name of the command.
  final pulumi.Input<String>? name;
  /// A regex string to filter results by Command name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The command type. Valid Values: `RunBatScript`, `RunPowerShellScript` and `RunShellScript`.
  final pulumi.Input<String>? type;

  /// Creates a new [GetCommandsArgs].
  /// [commandProvider] Public order provider.
  /// [contentEncoding] The Base64-encoded content of the command.
  /// [description] The description of command.
  /// [ids] A list of Command IDs.
  /// [name] The name of the command.
  /// [nameRegex] A regex string to filter results by Command name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [type] The command type. Valid Values: `RunBatScript`, `RunPowerShellScript` and `RunShellScript`.
  const GetCommandsArgs({
    this.commandProvider,
    this.contentEncoding,
    this.description,
    this.ids,
    this.name,
    this.nameRegex,
    this.outputFile,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandProvider': ?commandProvider,
      'contentEncoding': ?contentEncoding,
      'description': ?description,
      'ids': ?ids,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'type': ?type,
    };
  }

  factory GetCommandsArgs.fromMap(Map<String, dynamic> map) {
    return GetCommandsArgs(
      commandProvider: (() { final guardedValue = map['commandProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentEncoding: (() { final guardedValue = map['contentEncoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

