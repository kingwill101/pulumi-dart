// ignore_for_file: unused_element, unnecessary_cast


class V2FunctionCustomRuntimeConfig {
  /// Parameters received by the start entry command.
  final List<String>? args;
  /// List of Custom entry commands started by Custom Runtime. When there are multiple commands in the list, they are spliced in sequence.
  final List<String>? commands;

  /// Creates a new [V2FunctionCustomRuntimeConfig].
  /// [args] Parameters received by the start entry command.
  /// [commands] List of Custom entry commands started by Custom Runtime. When there are multiple commands in the list, they are spliced in sequence.
  V2FunctionCustomRuntimeConfig({
    this.args,
    this.commands,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
    };
  }

  factory V2FunctionCustomRuntimeConfig.fromMap(Map<String, dynamic> map) {
    return V2FunctionCustomRuntimeConfig(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      commands: map['commands'] == null ? null : (map['commands'] as List).cast<String>(),
    );
  }
}

