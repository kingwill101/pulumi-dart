// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_configuration.dart';

/// Dynamic pool configuration.
class DynamicPoolConfiguration {
  /// The lifecycle configuration of a session in the dynamic session pool
  final pulumi.Input<LifecycleConfiguration>? lifecycleConfiguration;

  /// Creates a new [DynamicPoolConfiguration].
  /// [lifecycleConfiguration] The lifecycle configuration of a session in the dynamic session pool
  const DynamicPoolConfiguration({
    this.lifecycleConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lifecycleConfiguration': ?pulumi.Input.mapOptionalInputValue<LifecycleConfiguration, Map<String, dynamic>>(lifecycleConfiguration, (value) => value.toMap()),
    };
  }

  factory DynamicPoolConfiguration.fromMap(Map<String, dynamic> map) {
    return DynamicPoolConfiguration(
      lifecycleConfiguration: (() { final guardedValue = map['lifecycleConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LifecycleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
