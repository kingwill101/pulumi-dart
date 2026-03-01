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
    pulumi.Output<String>? commandProvider,
    pulumi.Output<String>? contentEncoding,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? type,
  }) :
      commandProvider = pulumi.Input.asOptionalInput<String>(commandProvider),
      contentEncoding = pulumi.Input.asOptionalInput<String>(contentEncoding),
      description = pulumi.Input.asOptionalInput<String>(description),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      name = pulumi.Input.asOptionalInput<String>(name),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      commandProvider: map['commandProvider'] == null ? null : pulumi.Output.create<String>(map['commandProvider'] as String),
      contentEncoding: map['contentEncoding'] == null ? null : pulumi.Output.create<String>(map['contentEncoding'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

