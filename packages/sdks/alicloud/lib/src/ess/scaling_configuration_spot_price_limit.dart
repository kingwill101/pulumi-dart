// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScalingConfigurationSpotPriceLimit {
  /// Resource type of an ECS instance.
  final pulumi.Input<String>? instanceType;
  /// Price limit hourly of instance type, 2 decimals is allowed at most.
  final pulumi.Input<double>? priceLimit;

  /// Creates a new [ScalingConfigurationSpotPriceLimit].
  /// [instanceType] Resource type of an ECS instance.
  /// [priceLimit] Price limit hourly of instance type, 2 decimals is allowed at most.
  const ScalingConfigurationSpotPriceLimit({
    this.instanceType,
    this.priceLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': ?instanceType,
      'priceLimit': ?priceLimit,
    };
  }

  factory ScalingConfigurationSpotPriceLimit.fromMap(Map<String, dynamic> map) {
    return ScalingConfigurationSpotPriceLimit(
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priceLimit: (() { final guardedValue = map['priceLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

