// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2FunctionInstanceLifecycleConfigPreStop {
  /// entry point of function.
  final pulumi.Input<String>? handler;
  /// max running time of function.
  final pulumi.Input<int>? timeout;

  /// Creates a new [V2FunctionInstanceLifecycleConfigPreStop].
  /// [handler] entry point of function.
  /// [timeout] max running time of function.
  const V2FunctionInstanceLifecycleConfigPreStop({
    this.handler,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'handler': ?handler,
      'timeout': ?timeout,
    };
  }

  factory V2FunctionInstanceLifecycleConfigPreStop.fromMap(Map<String, dynamic> map) {
    return V2FunctionInstanceLifecycleConfigPreStop(
      handler: (() { final guardedValue = map['handler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

