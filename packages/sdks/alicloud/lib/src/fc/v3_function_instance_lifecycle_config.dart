// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_function_instance_lifecycle_config_initializer.dart';
import 'v3_function_instance_lifecycle_config_pre_stop.dart';

class V3FunctionInstanceLifecycleConfig {
  /// Initializer handler method configuration See `initializer` below.
  final pulumi.Input<V3FunctionInstanceLifecycleConfigInitializer>? initializer;

  /// PreStop handler method configuration See `pre_stop` below.
  final pulumi.Input<V3FunctionInstanceLifecycleConfigPreStop>? preStop;

  /// Creates a new [V3FunctionInstanceLifecycleConfig].
  /// [initializer] Initializer handler method configuration See `initializer` below.
  /// [preStop] PreStop handler method configuration See `pre_stop` below.
  V3FunctionInstanceLifecycleConfig({this.initializer, this.preStop});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initializer':
          ?pulumi.Input.mapOptionalInputValue<
            V3FunctionInstanceLifecycleConfigInitializer,
            Map<String, dynamic>
          >(initializer, (value) => value.toMap()),
      'preStop':
          ?pulumi.Input.mapOptionalInputValue<
            V3FunctionInstanceLifecycleConfigPreStop,
            Map<String, dynamic>
          >(preStop, (value) => value.toMap()),
    };
  }

  factory V3FunctionInstanceLifecycleConfig.fromMap(Map<String, dynamic> map) {
    return V3FunctionInstanceLifecycleConfig(
      initializer: (() {
        final guardedValue = map['initializer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V3FunctionInstanceLifecycleConfigInitializer.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      preStop: (() {
        final guardedValue = map['preStop'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V3FunctionInstanceLifecycleConfigPreStop.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
