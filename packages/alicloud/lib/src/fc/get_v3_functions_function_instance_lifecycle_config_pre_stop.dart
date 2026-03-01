// ignore_for_file: unused_element, unnecessary_cast


class GetV3FunctionsFunctionInstanceLifecycleConfigPreStop {
  /// The execution entry of the callback method, which is similar to the request handler.
  final String handler;
  /// The maximum running time of the function, in seconds.
  final int timeout;

  /// Creates a new [GetV3FunctionsFunctionInstanceLifecycleConfigPreStop].
  /// [handler] The execution entry of the callback method, which is similar to the request handler.
  /// [timeout] The maximum running time of the function, in seconds.
  GetV3FunctionsFunctionInstanceLifecycleConfigPreStop({
    required this.handler,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'handler': handler,
      'timeout': timeout,
    };
  }

  factory GetV3FunctionsFunctionInstanceLifecycleConfigPreStop.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsFunctionInstanceLifecycleConfigPreStop(
      handler: map['handler'] as String,
      timeout: map['timeout'] as int,
    );
  }
}

