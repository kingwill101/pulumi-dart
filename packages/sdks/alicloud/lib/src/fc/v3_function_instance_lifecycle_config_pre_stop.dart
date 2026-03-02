// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3FunctionInstanceLifecycleConfigPreStop {
  /// Function Handler: the call entry for the function compute system to run your function.
  final pulumi.Input<String>? handler;
  /// The maximum running time of the function, in seconds.
  final pulumi.Input<int>? timeout;

  /// Creates a new [V3FunctionInstanceLifecycleConfigPreStop].
  /// [handler] Function Handler: the call entry for the function compute system to run your function.
  /// [timeout] The maximum running time of the function, in seconds.
  V3FunctionInstanceLifecycleConfigPreStop({
    this.handler,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'handler': ?handler,
      'timeout': ?timeout,
    };
  }

  factory V3FunctionInstanceLifecycleConfigPreStop.fromMap(Map<String, dynamic> map) {
    return V3FunctionInstanceLifecycleConfigPreStop(
      handler: map['handler'] == null ? null : (map['handler'] as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as int).input(),
    );
  }
}

