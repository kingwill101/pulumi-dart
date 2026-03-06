// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScalingConfigurationInstanceTypeOverride {
  /// The is specified for an instance type in instanceTypeOverride.
  final pulumi.Input<String>? instanceType;
  /// The weight of instance type in instanceTypeOverride.
  final pulumi.Input<int>? weightedCapacity;

  /// Creates a new [ScalingConfigurationInstanceTypeOverride].
  /// [instanceType] The is specified for an instance type in instanceTypeOverride.
  /// [weightedCapacity] The weight of instance type in instanceTypeOverride.
  const ScalingConfigurationInstanceTypeOverride({
    this.instanceType,
    this.weightedCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': ?instanceType,
      'weightedCapacity': ?weightedCapacity,
    };
  }

  factory ScalingConfigurationInstanceTypeOverride.fromMap(Map<String, dynamic> map) {
    return ScalingConfigurationInstanceTypeOverride(
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weightedCapacity: (() { final guardedValue = map['weightedCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

