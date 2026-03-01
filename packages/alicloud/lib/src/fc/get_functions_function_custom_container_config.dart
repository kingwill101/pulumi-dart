// ignore_for_file: unused_element, unnecessary_cast


class GetFunctionsFunctionCustomContainerConfig {
  /// The args field specifies the arguments passed to the command.
  final String args;
  /// The entry point of the container, which specifies the actual command run by the container.
  final String command;
  /// The container image address.
  final String image;

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
    return <String, dynamic>{
      'args': args,
      'command': command,
      'image': image,
    };
  }

  factory GetFunctionsFunctionCustomContainerConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionsFunctionCustomContainerConfig(
      args: map['args'] as String,
      command: map['command'] as String,
      image: map['image'] as String,
    );
  }
}

