// ignore_for_file: unused_element, unnecessary_cast


class V3FunctionInstanceLifecycleConfigInitializer {
  final List<String>? commands;
  /// Function Handler: the call entry for the function compute system to run your function.
  final String? handler;
  /// The maximum running time of the function, in seconds.
  final int? timeout;

  /// Creates a new [V3FunctionInstanceLifecycleConfigInitializer].
  /// [commands] Optional.
  /// [handler] Function Handler: the call entry for the function compute system to run your function.
  /// [timeout] The maximum running time of the function, in seconds.
  V3FunctionInstanceLifecycleConfigInitializer({
    this.commands,
    this.handler,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': ?commands,
      'handler': ?handler,
      'timeout': ?timeout,
    };
  }

  factory V3FunctionInstanceLifecycleConfigInitializer.fromMap(Map<String, dynamic> map) {
    return V3FunctionInstanceLifecycleConfigInitializer(
      commands: map['commands'] == null ? null : (map['commands'] as List).cast<String>(),
      handler: map['handler'] == null ? null : map['handler'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
    );
  }
}

