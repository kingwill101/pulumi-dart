// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_command_command_args_doc}
/// The set of arguments for Command.
/// {@endtemplate}
/// {@macro pulumi_ecs_command_command_args_doc}
class CommandArgs {
  /// The Base64-encoded content of the command.
  final pulumi.Input<String> commandContent;
  /// The description of command.
  final pulumi.Input<String>? description;
  /// Specifies whether to use custom parameters in the command to be created. Default to: false.
  final pulumi.Input<bool>? enableParameter;
  /// The name of the command, which supports all character sets. It can be up to 128 characters in length.
  final pulumi.Input<String>? name;
  /// The timeout period that is specified for the command to be run on ECS instances. Unit: seconds. Default to: `60`.
  final pulumi.Input<int>? timeout;
  /// The command type. Valid Values: `RunBatScript`, `RunPowerShellScript` and `RunShellScript`.
  final pulumi.Input<String> type;
  /// The execution path of the command in the ECS instance.
  final pulumi.Input<String>? workingDir;

  /// Creates a new [CommandArgs].
  /// [commandContent] The Base64-encoded content of the command.
  /// [description] The description of command.
  /// [enableParameter] Specifies whether to use custom parameters in the command to be created. Default to: false.
  /// [name] The name of the command, which supports all character sets. It can be up to 128 characters in length.
  /// [timeout] The timeout period that is specified for the command to be run on ECS instances. Unit: seconds. Default to: `60`.
  /// [type] The command type. Valid Values: `RunBatScript`, `RunPowerShellScript` and `RunShellScript`.
  /// [workingDir] The execution path of the command in the ECS instance.
  CommandArgs({
    required String commandContent,
    String? description,
    bool? enableParameter,
    String? name,
    int? timeout,
    required String type,
    String? workingDir,
  }) :
      commandContent = pulumi.Input.asInput<String>(commandContent),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableParameter = pulumi.Input.asOptionalInput<bool>(enableParameter),
      name = pulumi.Input.asOptionalInput<String>(name),
      timeout = pulumi.Input.asOptionalInput<int>(timeout),
      type = pulumi.Input.asInput<String>(type),
      workingDir = pulumi.Input.asOptionalInput<String>(workingDir);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandContent': commandContent,
      'description': ?description,
      'enableParameter': ?enableParameter,
      'name': ?name,
      'timeout': ?timeout,
      'type': type,
      'workingDir': ?workingDir,
    };
  }

  factory CommandArgs.fromMap(Map<String, dynamic> map) {
    return CommandArgs(
      commandContent: map['commandContent'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      enableParameter: map['enableParameter'] == null ? null : map['enableParameter'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
      type: map['type'] as String,
      workingDir: map['workingDir'] == null ? null : map['workingDir'] as String,
    );
  }
}

