// ignore_for_file: unused_element, unnecessary_cast


class GetScalingConfigurationsConfigurationSpotPriceLimit {
  /// Resource type of an ECS instance.
  final String instanceType;
  /// Price limit hourly of instance type.
  final double priceLimit;

  /// Creates a new [GetScalingConfigurationsConfigurationSpotPriceLimit].
  /// [instanceType] Resource type of an ECS instance.
  /// [priceLimit] Price limit hourly of instance type.
  GetScalingConfigurationsConfigurationSpotPriceLimit({
    required this.instanceType,
    required this.priceLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
      'priceLimit': priceLimit,
    };
  }

  factory GetScalingConfigurationsConfigurationSpotPriceLimit.fromMap(Map<String, dynamic> map) {
    return GetScalingConfigurationsConfigurationSpotPriceLimit(
      instanceType: map['instanceType'] as String,
      priceLimit: map['priceLimit'] as double,
    );
  }
}

