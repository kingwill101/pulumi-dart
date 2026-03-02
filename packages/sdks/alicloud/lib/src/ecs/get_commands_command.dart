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
      commandContent: (map['commandContent'] as String).input(),
      commandId: (map['commandId'] as String).input(),
      description: (map['description'] as String).input(),
      enableParameter: (map['enableParameter'] as bool).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      parameterNames: ((map['parameterNames'] as List).cast<String>()).input(),
      timeout: (map['timeout'] as int).input(),
      type: (map['type'] as String).input(),
      workingDir: (map['workingDir'] as String).input(),
    );
  }
}

