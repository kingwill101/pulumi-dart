// ignore_for_file: unused_element, unnecessary_cast


class LaunchTemplateInstanceMarketOptionsSpotOptions {
  /// The required duration in minutes. This value must be a multiple of 60.
  final int? blockDurationMinutes;
  /// The behavior when a Spot Instance is interrupted. Can be `hibernate`,
  /// `stop`, or `terminate`. (Default: `terminate`).
  final String? instanceInterruptionBehavior;
  /// The maximum hourly price you're willing to pay for the Spot Instances.
  final String? maxPrice;
  /// The Spot Instance request type. Can be `one-time`, or `persistent`.
  final String? spotInstanceType;
  /// The end date of the request.
  final String? validUntil;

  /// Creates a new [LaunchTemplateInstanceMarketOptionsSpotOptions].
  /// [blockDurationMinutes] The required duration in minutes. This value must be a multiple of 60.
  /// [instanceInterruptionBehavior] The behavior when a Spot Instance is interrupted. Can be `hibernate`,
  /// [maxPrice] The maximum hourly price you're willing to pay for the Spot Instances.
  /// [spotInstanceType] The Spot Instance request type. Can be `one-time`, or `persistent`.
  /// [validUntil] The end date of the request.
  LaunchTemplateInstanceMarketOptionsSpotOptions({
    this.blockDurationMinutes,
    this.instanceInterruptionBehavior,
    this.maxPrice,
    this.spotInstanceType,
    this.validUntil,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockDurationMinutes': ?blockDurationMinutes,
      'instanceInterruptionBehavior': ?instanceInterruptionBehavior,
      'maxPrice': ?maxPrice,
      'spotInstanceType': ?spotInstanceType,
      'validUntil': ?validUntil,
    };
  }

  factory LaunchTemplateInstanceMarketOptionsSpotOptions.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateInstanceMarketOptionsSpotOptions(
      blockDurationMinutes: map['blockDurationMinutes'] == null ? null : map['blockDurationMinutes'] as int,
      instanceInterruptionBehavior: map['instanceInterruptionBehavior'] == null ? null : map['instanceInterruptionBehavior'] as String,
      maxPrice: map['maxPrice'] == null ? null : map['maxPrice'] as String,
      spotInstanceType: map['spotInstanceType'] == null ? null : map['spotInstanceType'] as String,
      validUntil: map['validUntil'] == null ? null : map['validUntil'] as String,
    );
  }
}

