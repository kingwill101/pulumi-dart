// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_v3_functions_function_instance_lifecycle_config_initializer.dart';
import 'get_v3_functions_function_instance_lifecycle_config_pre_stop.dart';

class GetV3FunctionsFunctionInstanceLifecycleConfig {
  /// Initializer handler method configuration.
  final pulumi.Input<GetV3FunctionsFunctionInstanceLifecycleConfigInitializer> initializer;
  /// PreStop handler method configuration.
  final pulumi.Input<GetV3FunctionsFunctionInstanceLifecycleConfigPreStop> preStop;

  /// Creates a new [GetV3FunctionsFunctionInstanceLifecycleConfig].
  /// [initializer] Initializer handler method configuration.
  /// [preStop] PreStop handler method configuration.
  GetV3FunctionsFunctionInstanceLifecycleConfig({
    required this.initializer,
    required this.preStop,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initializer': pulumi.Input.mapInputValue<GetV3FunctionsFunctionInstanceLifecycleConfigInitializer, Map<String, dynamic>>(initializer, (value) => value.toMap()),
      'preStop': pulumi.Input.mapInputValue<GetV3FunctionsFunctionInstanceLifecycleConfigPreStop, Map<String, dynamic>>(preStop, (value) => value.toMap()),
    };
  }

  factory GetV3FunctionsFunctionInstanceLifecycleConfig.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsFunctionInstanceLifecycleConfig(
      initializer: pulumi.Input.fromValue(GetV3FunctionsFunctionInstanceLifecycleConfigInitializer.fromMap((map['initializer']! as Map).cast<String, dynamic>())),
      preStop: pulumi.Input.fromValue(GetV3FunctionsFunctionInstanceLifecycleConfigPreStop.fromMap((map['preStop']! as Map).cast<String, dynamic>())),
    );
  }
}

