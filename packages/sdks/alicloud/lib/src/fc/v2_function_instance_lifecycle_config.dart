// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_function_instance_lifecycle_config_pre_freeze.dart';
import 'v2_function_instance_lifecycle_config_pre_stop.dart';

class V2FunctionInstanceLifecycleConfig {
  /// PreFreeze function configuration. See `pre_freeze` below.
  final pulumi.Input<V2FunctionInstanceLifecycleConfigPreFreeze>? preFreeze;
  /// PreStop function configuration. See `pre_stop` below.
  final pulumi.Input<V2FunctionInstanceLifecycleConfigPreStop>? preStop;

  /// Creates a new [V2FunctionInstanceLifecycleConfig].
  /// [preFreeze] PreFreeze function configuration. See `pre_freeze` below.
  /// [preStop] PreStop function configuration. See `pre_stop` below.
  V2FunctionInstanceLifecycleConfig({
    this.preFreeze,
    this.preStop,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preFreeze': ?pulumi.Input.mapOptionalInputValue<V2FunctionInstanceLifecycleConfigPreFreeze, Map<String, dynamic>>(preFreeze, (value) => value.toMap()),
      'preStop': ?pulumi.Input.mapOptionalInputValue<V2FunctionInstanceLifecycleConfigPreStop, Map<String, dynamic>>(preStop, (value) => value.toMap()),
    };
  }

  factory V2FunctionInstanceLifecycleConfig.fromMap(Map<String, dynamic> map) {
    return V2FunctionInstanceLifecycleConfig(
      preFreeze: map['preFreeze'] == null ? null : (V2FunctionInstanceLifecycleConfigPreFreeze.fromMap((map['preFreeze']! as Map).cast<String, dynamic>())).input(),
      preStop: map['preStop'] == null ? null : (V2FunctionInstanceLifecycleConfigPreStop.fromMap((map['preStop']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

