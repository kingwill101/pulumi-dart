// ignore_for_file: unused_element, unnecessary_cast

import 'instance_config_instance_size.dart';

/// Message storing the instance configuration.
class InstanceConfig {
  /// The instance size of this the instance configuration.
  final InstanceConfigInstanceSize? instanceSize;

  /// Creates a new [InstanceConfig].
  /// [instanceSize] The instance size of this the instance configuration.
  InstanceConfig({
    this.instanceSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSize': ?instanceSize == null ? null : instanceSize!.value,
    };
  }

  factory InstanceConfig.fromMap(Map<String, dynamic> map) {
    return InstanceConfig(
      instanceSize: map['instanceSize'] == null ? null : InstanceConfigInstanceSize.fromValue(map['instanceSize'] as String),
    );
  }
}

