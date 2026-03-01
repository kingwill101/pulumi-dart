// ignore_for_file: unused_element, unnecessary_cast

import 'v2_function_instance_lifecycle_config_pre_freeze.dart';
import 'v2_function_instance_lifecycle_config_pre_stop.dart';

class V2FunctionInstanceLifecycleConfig {
  /// PreFreeze function configuration. See `pre_freeze` below.
  final V2FunctionInstanceLifecycleConfigPreFreeze? preFreeze;
  /// PreStop function configuration. See `pre_stop` below.
  final V2FunctionInstanceLifecycleConfigPreStop? preStop;

  /// Creates a new [V2FunctionInstanceLifecycleConfig].
  /// [preFreeze] PreFreeze function configuration. See `pre_freeze` below.
  /// [preStop] PreStop function configuration. See `pre_stop` below.
  V2FunctionInstanceLifecycleConfig({
    this.preFreeze,
    this.preStop,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preFreeze': ?preFreeze == null ? null : preFreeze!.toMap(),
      'preStop': ?preStop == null ? null : preStop!.toMap(),
    };
  }

  factory V2FunctionInstanceLifecycleConfig.fromMap(Map<String, dynamic> map) {
    return V2FunctionInstanceLifecycleConfig(
      preFreeze: map['preFreeze'] == null ? null : V2FunctionInstanceLifecycleConfigPreFreeze.fromMap((map['preFreeze'] as Map).cast<String, dynamic>()),
      preStop: map['preStop'] == null ? null : V2FunctionInstanceLifecycleConfigPreStop.fromMap((map['preStop'] as Map).cast<String, dynamic>()),
    );
  }
}

