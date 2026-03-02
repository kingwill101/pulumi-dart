// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceInstanceMarketOptionsSpotOptions {
  /// The behavior when a Spot Instance is interrupted. Valid values include `hibernate`, `stop`, `terminate` . The default is `terminate`.
  final pulumi.Input<String>? instanceInterruptionBehavior;
  /// The maximum hourly price that you're willing to pay for a Spot Instance.
  final pulumi.Input<String>? maxPrice;
  /// The Spot Instance request type. Valid values include `one-time`, `persistent`. Persistent Spot Instance requests are only supported when the instance interruption behavior is either hibernate or stop. The default is `one-time`.
  final pulumi.Input<String>? spotInstanceType;
  /// The end date of the request, in UTC format (YYYY-MM-DDTHH:MM:SSZ). Supported only for persistent requests.
  final pulumi.Input<String>? validUntil;

  /// Creates a new [InstanceInstanceMarketOptionsSpotOptions].
  /// [instanceInterruptionBehavior] The behavior when a Spot Instance is interrupted. Valid values include `hibernate`, `stop`, `terminate` . The default is `terminate`.
  /// [maxPrice] The maximum hourly price that you're willing to pay for a Spot Instance.
  /// [spotInstanceType] The Spot Instance request type. Valid values include `one-time`, `persistent`. Persistent Spot Instance requests are only supported when the instance interruption behavior is either hibernate or stop. The default is `one-time`.
  /// [validUntil] The end date of the request, in UTC format (YYYY-MM-DDTHH:MM:SSZ). Supported only for persistent requests.
  InstanceInstanceMarketOptionsSpotOptions({
    this.instanceInterruptionBehavior,
    this.maxPrice,
    this.spotInstanceType,
    this.validUntil,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceInterruptionBehavior': ?instanceInterruptionBehavior,
      'maxPrice': ?maxPrice,
      'spotInstanceType': ?spotInstanceType,
      'validUntil': ?validUntil,
    };
  }

  factory InstanceInstanceMarketOptionsSpotOptions.fromMap(Map<String, dynamic> map) {
    return InstanceInstanceMarketOptionsSpotOptions(
      instanceInterruptionBehavior: map['instanceInterruptionBehavior'] == null ? null : ((map['instanceInterruptionBehavior'] as String).input()).input(),
      maxPrice: map['maxPrice'] == null ? null : ((map['maxPrice'] as String).input()).input(),
      spotInstanceType: map['spotInstanceType'] == null ? null : ((map['spotInstanceType'] as String).input()).input(),
      validUntil: map['validUntil'] == null ? null : ((map['validUntil'] as String).input()).input(),
    );
  }
}

