// ignore_for_file: unused_element, unnecessary_cast


class FunctionCustomContainerConfig {
  /// The args field specifies the arguments passed to the command.
  final String? args;
  /// The entry point of the container, which specifies the actual command run by the container.
  final String? command;
  /// The container image address.
  final String image;

  /// Creates a new [FunctionCustomContainerConfig].
  /// [args] The args field specifies the arguments passed to the command.
  /// [command] The entry point of the container, which specifies the actual command run by the container.
  /// [image] The container image address.
  FunctionCustomContainerConfig({
    this.args,
    this.command,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'command': ?command,
      'image': image,
    };
  }

  factory FunctionCustomContainerConfig.fromMap(Map<String, dynamic> map) {
    return FunctionCustomContainerConfig(
      args: map['args'] == null ? null : map['args'] as String,
      command: map['command'] == null ? null : map['command'] as String,
      image: map['image'] as String,
    );
  }
}

