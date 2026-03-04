// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionsFunctionCustomContainerConfig {
  /// The args field specifies the arguments passed to the command.
  final pulumi.Input<String> args;

  /// The entry point of the container, which specifies the actual command run by the container.
  final pulumi.Input<String> command;

  /// The container image address.
  final pulumi.Input<String> image;

  /// Creates a new [GetFunctionsFunctionCustomContainerConfig].
  /// [args] The args field specifies the arguments passed to the command.
  /// [command] The entry point of the container, which specifies the actual command run by the container.
  /// [image] The container image address.
  GetFunctionsFunctionCustomContainerConfig({
    required this.args,
    required this.command,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'args': args, 'command': command, 'image': image};
  }

  factory GetFunctionsFunctionCustomContainerConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFunctionsFunctionCustomContainerConfig(
      args: pulumi.Input.fromValue(map['args'] as String),
      command: pulumi.Input.fromValue(map['command'] as String),
      image: pulumi.Input.fromValue(map['image'] as String),
    );
  }
}
