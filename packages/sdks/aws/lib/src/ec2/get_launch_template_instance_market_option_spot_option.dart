// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateInstanceMarketOptionSpotOption {
  final pulumi.Input<int> blockDurationMinutes;
  final pulumi.Input<String> instanceInterruptionBehavior;
  final pulumi.Input<String> maxPrice;
  final pulumi.Input<String> spotInstanceType;
  final pulumi.Input<String> validUntil;

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

  factory GetLaunchTemplateInstanceMarketOptionSpotOption.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateInstanceMarketOptionSpotOption(
      blockDurationMinutes: (map['blockDurationMinutes'] as int).input(),
      instanceInterruptionBehavior: (map['instanceInterruptionBehavior'] as String).input(),
      maxPrice: (map['maxPrice'] as String).input(),
      spotInstanceType: (map['spotInstanceType'] as String).input(),
      validUntil: (map['validUntil'] as String).input(),
    );
  }
}

