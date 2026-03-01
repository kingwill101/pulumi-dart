// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateInstanceMarketOptionSpotOption {
  final int blockDurationMinutes;
  final String instanceInterruptionBehavior;
  final String maxPrice;
  final String spotInstanceType;
  final String validUntil;

  /// Creates a new [GetLaunchTemplateInstanceMarketOptionSpotOption].
  /// [blockDurationMinutes] Required.
  /// [instanceInterruptionBehavior] Required.
  /// [maxPrice] Required.
  /// [spotInstanceType] Required.
  /// [validUntil] Required.
  GetLaunchTemplateInstanceMarketOptionSpotOption({
    required this.blockDurationMinutes,
    required this.instanceInterruptionBehavior,
    required this.maxPrice,
    required this.spotInstanceType,
    required this.validUntil,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockDurationMinutes': blockDurationMinutes,
      'instanceInterruptionBehavior': instanceInterruptionBehavior,
      'maxPrice': maxPrice,
      'spotInstanceType': spotInstanceType,
      'validUntil': validUntil,
    };
  }

  factory GetLaunchTemplateInstanceMarketOptionSpotOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLaunchTemplateInstanceMarketOptionSpotOption(
      blockDurationMinutes: map['blockDurationMinutes'] as int,
      instanceInterruptionBehavior:
          map['instanceInterruptionBehavior'] as String,
      maxPrice: map['maxPrice'] as String,
      spotInstanceType: map['spotInstanceType'] as String,
      validUntil: map['validUntil'] as String,
    );
  }
}
