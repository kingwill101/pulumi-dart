// ignore_for_file: unused_element, unnecessary_cast

import 'instance_config_instance_size.dart';

/// Message storing the instance configuration.
class InstanceConfig2 {
  /// The instance size of this the instance configuration.
  final InstanceConfigInstanceSize? instanceSize;

  InstanceConfig2({
    this.instanceSize,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceSizeValue = instanceSize;
    if (instanceSizeValue != null) {
      map['instanceSize'] = instanceSizeValue.value;
    }
    return map;
  }

  factory InstanceConfig2.fromMap(Map<String, dynamic> map) {
    return InstanceConfig2(
      instanceSize: map['instanceSize'] == null
          ? null
          : InstanceConfigInstanceSize.fromValue(map['instanceSize'] as String),
    );
  }
}
