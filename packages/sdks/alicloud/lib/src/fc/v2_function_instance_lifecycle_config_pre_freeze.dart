// ignore_for_file: unused_element, unnecessary_cast


class V2FunctionInstanceLifecycleConfigPreFreeze {
  /// entry point of function.
  final String? handler;
  /// max running time of function.
  final int? timeout;

  /// Creates a new [V2FunctionInstanceLifecycleConfigPreFreeze].
  /// [handler] entry point of function.
  /// [timeout] max running time of function.
  V2FunctionInstanceLifecycleConfigPreFreeze({
    this.handler,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'handler': ?handler,
      'timeout': ?timeout,
    };
  }

  factory V2FunctionInstanceLifecycleConfigPreFreeze.fromMap(Map<String, dynamic> map) {
    return V2FunctionInstanceLifecycleConfigPreFreeze(
      handler: map['handler'] == null ? null : map['handler'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
    );
  }
}

