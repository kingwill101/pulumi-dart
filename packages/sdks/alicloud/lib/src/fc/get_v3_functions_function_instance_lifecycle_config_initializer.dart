// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetV3FunctionsFunctionInstanceLifecycleConfigInitializer {
  /// Lifecycle Initialization Phase Callback Instructions.
  final pulumi.Input<List<String>> commands;

  /// The execution entry of the callback method, which is similar to the request handler.
  final pulumi.Input<String> handler;

  /// The maximum running time of the function, in seconds.
  final pulumi.Input<int> timeout;

  /// Creates a new [GetV3FunctionsFunctionInstanceLifecycleConfigInitializer].
  /// [commands] Lifecycle Initialization Phase Callback Instructions.
  /// [handler] The execution entry of the callback method, which is similar to the request handler.
  /// [timeout] The maximum running time of the function, in seconds.
  GetV3FunctionsFunctionInstanceLifecycleConfigInitializer({
    required this.commands,
    required this.handler,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': commands,
      'handler': handler,
      'timeout': timeout,
    };
  }

  factory GetV3FunctionsFunctionInstanceLifecycleConfigInitializer.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetV3FunctionsFunctionInstanceLifecycleConfigInitializer(
      commands: pulumi.Input.fromValue(
        (map['commands'] as List).cast<String>(),
      ),
      handler: pulumi.Input.fromValue(map['handler'] as String),
      timeout: pulumi.Input.fromValue(map['timeout'] as int),
    );
  }
}
