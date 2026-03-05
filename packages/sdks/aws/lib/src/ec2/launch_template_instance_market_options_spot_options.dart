// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateInstanceMarketOptionsSpotOptions {
  /// The required duration in minutes. This value must be a multiple of 60.
  final pulumi.Input<int>? blockDurationMinutes;
  /// The behavior when a Spot Instance is interrupted. Can be `hibernate`,
  /// `stop`, or `terminate`. (Default: `terminate`).
  final pulumi.Input<String>? instanceInterruptionBehavior;
  /// The maximum hourly price you're willing to pay for the Spot Instances.
  final pulumi.Input<String>? maxPrice;
  /// The Spot Instance request type. Can be `one-time`, or `persistent`.
  final pulumi.Input<String>? spotInstanceType;
  /// The end date of the request.
  final pulumi.Input<String>? validUntil;

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
      blockDurationMinutes: (() { final guardedValue = map['blockDurationMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceInterruptionBehavior: (() { final guardedValue = map['instanceInterruptionBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxPrice: (() { final guardedValue = map['maxPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spotInstanceType: (() { final guardedValue = map['spotInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validUntil: (() { final guardedValue = map['validUntil']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

