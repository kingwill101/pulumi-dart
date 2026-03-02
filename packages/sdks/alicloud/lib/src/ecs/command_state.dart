// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Command resources.
class CommandState {
  /// The Base64-encoded content of the command.
  final pulumi.Input<String>? commandContent;
  /// The description of command.
  final pulumi.Input<String>? description;
  /// Specifies whether to use custom parameters in the command to be created. Default to: false.
  final pulumi.Input<bool>? enableParameter;
  /// The name of the command, which supports all character sets. It can be up to 128 characters in length.
  final pulumi.Input<String>? name;
  /// The timeout period that is specified for the command to be run on ECS instances. Unit: seconds. Default to: `60`.
  final pulumi.Input<int>? timeout;
  /// The command type. Valid Values: `RunBatScript`, `RunPowerShellScript` and `RunShellScript`.
  final pulumi.Input<String>? type;
  /// The execution path of the command in the ECS instance.
  final pulumi.Input<String>? workingDir;

  /// Creates a new [CommandState].
  /// [commandContent] The Base64-encoded content of the command.
  /// [description] The description of command.
  /// [enableParameter] Specifies whether to use custom parameters in the command to be created. Default to: false.
  /// [name] The name of the command, which supports all character sets. It can be up to 128 characters in length.
  /// [timeout] The timeout period that is specified for the command to be run on ECS instances. Unit: seconds. Default to: `60`.
  /// [type] The command type. Valid Values: `RunBatScript`, `RunPowerShellScript` and `RunShellScript`.
  /// [workingDir] The execution path of the command in the ECS instance.
  CommandState({
    this.commandContent,
    this.description,
    this.enableParameter,
    this.name,
    this.timeout,
    this.type,
    this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandContent': ?commandContent,
      'description': ?description,
      'enableParameter': ?enableParameter,
      'name': ?name,
      'timeout': ?timeout,
      'type': ?type,
      'workingDir': ?workingDir,
    };
  }

  factory CommandState.fromMap(Map<String, dynamic> map) {
    return CommandState(
      commandContent: map['commandContent'] == null ? null : (map['commandContent']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      enableParameter: map['enableParameter'] == null ? null : (map['enableParameter']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as int).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      workingDir: map['workingDir'] == null ? null : (map['workingDir']! as String).input(),
    );
  }
}

