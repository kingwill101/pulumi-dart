// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetV3FunctionsFunctionInstanceLifecycleConfigPreStop {
  /// The execution entry of the callback method, which is similar to the request handler.
  final pulumi.Input<String> handler;
  /// The maximum running time of the function, in seconds.
  final pulumi.Input<int> timeout;

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
      handler: pulumi.Input.fromValue(map['handler'] as String),
      timeout: pulumi.Input.fromValue(map['timeout'] as int),
    );
  }
}

