// ignore_for_file: unused_element, unnecessary_cast


class GetCommandsCommand {
  /// The Base64-encoded content of the command.
  final String commandContent;
  /// The ID of the Command.
  final String commandId;
  /// The description of command.
  final String description;
  /// Specifies whether to use custom parameters in the command to be created.
  final bool enableParameter;
  /// The ID of the Command.
  final String id;
  /// The name of the command
  final String name;
  /// A list of custom parameter names which are parsed from the command content specified when the command was being created.
  final List<String> parameterNames;
  /// The timeout period that is specified for the command to be run on ECS instances.
  final int timeout;
  /// The command type.
  final String type;
  /// The execution path of the command in the ECS instance.
  final String workingDir;

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
      commandContent: map['commandContent'] as String,
      commandId: map['commandId'] as String,
      description: map['description'] as String,
      enableParameter: map['enableParameter'] as bool,
      id: map['id'] as String,
      name: map['name'] as String,
      parameterNames: (map['parameterNames'] as List).cast<String>(),
      timeout: map['timeout'] as int,
      type: map['type'] as String,
      workingDir: map['workingDir'] as String,
    );
  }
}

