// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCommandsCommand {
  /// The Base64-encoded content of the command.
  final pulumi.Input<String> commandContent;

  /// The ID of the Command.
  final pulumi.Input<String> commandId;

  /// The description of command.
  final pulumi.Input<String> description;

  /// Specifies whether to use custom parameters in the command to be created.
  final pulumi.Input<bool> enableParameter;

  /// The ID of the Command.
  final pulumi.Input<String> id;

  /// The name of the command
  final pulumi.Input<String> name;

  /// A list of custom parameter names which are parsed from the command content specified when the command was being created.
  final pulumi.Input<List<String>> parameterNames;

  /// The timeout period that is specified for the command to be run on ECS instances.
  final pulumi.Input<int> timeout;

  /// The command type.
  final pulumi.Input<String> type;

  /// The execution path of the command in the ECS instance.
  final pulumi.Input<String> workingDir;

  /// Creates a new [GetCommandsCommand].
  /// [commandContent] The Base64-encoded content of the command.
  /// [commandId] The ID of the Command.
  /// [description] The description of command.
  /// [enableParameter] Specifies whether to use custom parameters in the command to be created.
  /// [id] The ID of the Command.
  /// [name] The name of the command
  /// [parameterNames] A list of custom parameter names which are parsed from the command content specified when the command was being created.
  /// [timeout] The timeout period that is specified for the command to be run on ECS instances.
  /// [type] The command type.
  /// [workingDir] The execution path of the command in the ECS instance.
  GetCommandsCommand({
    required this.commandContent,
    required this.commandId,
    required this.description,
    required this.enableParameter,
    required this.id,
    required this.name,
    required this.parameterNames,
    required this.timeout,
    required this.type,
    required this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandContent': commandContent,
      'commandId': commandId,
      'description': description,
      'enableParameter': enableParameter,
      'id': id,
      'name': name,
      'parameterNames': parameterNames,
      'timeout': timeout,
      'type': type,
      'workingDir': workingDir,
    };
  }

  factory GetCommandsCommand.fromMap(Map<String, dynamic> map) {
    return GetCommandsCommand(
      commandContent: pulumi.Input.fromValue(map['commandContent'] as String),
      commandId: pulumi.Input.fromValue(map['commandId'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      enableParameter: pulumi.Input.fromValue(map['enableParameter'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      parameterNames: pulumi.Input.fromValue(
        (map['parameterNames'] as List).cast<String>(),
      ),
      timeout: pulumi.Input.fromValue(map['timeout'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
      workingDir: pulumi.Input.fromValue(map['workingDir'] as String),
    );
  }
}
