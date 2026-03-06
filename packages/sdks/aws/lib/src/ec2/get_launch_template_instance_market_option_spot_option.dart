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
  const GetLaunchTemplateInstanceMarketOptionSpotOption({
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
      blockDurationMinutes: pulumi.Input.fromValue(map['blockDurationMinutes'] as int),
      instanceInterruptionBehavior: pulumi.Input.fromValue(map['instanceInterruptionBehavior'] as String),
      maxPrice: pulumi.Input.fromValue(map['maxPrice'] as String),
      spotInstanceType: pulumi.Input.fromValue(map['spotInstanceType'] as String),
      validUntil: pulumi.Input.fromValue(map['validUntil'] as String),
    );
  }
}

