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
  ScalingConfigurationSpotPriceLimit({
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
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      priceLimit: map['priceLimit'] == null ? null : (map['priceLimit']! as double).input(),
    );
  }
}

