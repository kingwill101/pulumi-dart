// ignore_for_file: unused_element, unnecessary_cast

import 'v3_function_instance_lifecycle_config_initializer.dart';
import 'v3_function_instance_lifecycle_config_pre_stop.dart';

class V3FunctionInstanceLifecycleConfig {
  /// Initializer handler method configuration See `initializer` below.
  final V3FunctionInstanceLifecycleConfigInitializer? initializer;
  /// PreStop handler method configuration See `pre_stop` below.
  final V3FunctionInstanceLifecycleConfigPreStop? preStop;

  /// Creates a new [V3FunctionInstanceLifecycleConfig].
  /// [initializer] Initializer handler method configuration See `initializer` below.
  /// [preStop] PreStop handler method configuration See `pre_stop` below.
  V3FunctionInstanceLifecycleConfig({
    this.initializer,
    this.preStop,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initializer': ?initializer == null ? null : initializer!.toMap(),
      'preStop': ?preStop == null ? null : preStop!.toMap(),
    };
  }

  factory V3FunctionInstanceLifecycleConfig.fromMap(Map<String, dynamic> map) {
    return V3FunctionInstanceLifecycleConfig(
      initializer: map['initializer'] == null ? null : V3FunctionInstanceLifecycleConfigInitializer.fromMap((map['initializer'] as Map).cast<String, dynamic>()),
      preStop: map['preStop'] == null ? null : V3FunctionInstanceLifecycleConfigPreStop.fromMap((map['preStop'] as Map).cast<String, dynamic>()),
    );
  }
}

