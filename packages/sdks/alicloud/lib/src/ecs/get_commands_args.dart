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
  GetCommandsArgs({
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
      commandProvider: map['commandProvider'] == null ? null : (map['commandProvider'] as String).input(),
      contentEncoding: map['contentEncoding'] == null ? null : (map['contentEncoding'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

