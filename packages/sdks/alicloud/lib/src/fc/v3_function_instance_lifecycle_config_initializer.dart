// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3FunctionInstanceLifecycleConfigInitializer {
  final pulumi.Input<List<String>>? commands;
  /// Function Handler: the call entry for the function compute system to run your function.
  final pulumi.Input<String>? handler;
  /// The maximum running time of the function, in seconds.
  final pulumi.Input<int>? timeout;

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
      commands: map['commands'] == null ? null : ((map['commands']! as List).cast<String>()).input(),
      handler: map['handler'] == null ? null : (map['handler']! as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as int).input(),
    );
  }
}

