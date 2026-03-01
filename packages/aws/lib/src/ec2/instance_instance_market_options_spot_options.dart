// ignore_for_file: unused_element, unnecessary_cast


class InstanceInstanceMarketOptionsSpotOptions {
  /// The behavior when a Spot Instance is interrupted. Valid values include `hibernate`, `stop`, `terminate` . The default is `terminate`.
  final String? instanceInterruptionBehavior;
  /// The maximum hourly price that you're willing to pay for a Spot Instance.
  final String? maxPrice;
  /// The Spot Instance request type. Valid values include `one-time`, `persistent`. Persistent Spot Instance requests are only supported when the instance interruption behavior is either hibernate or stop. The default is `one-time`.
  final String? spotInstanceType;
  /// The end date of the request, in UTC format (YYYY-MM-DDTHH:MM:SSZ). Supported only for persistent requests.
  final String? validUntil;

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
      instanceInterruptionBehavior: map['instanceInterruptionBehavior'] == null ? null : map['instanceInterruptionBehavior'] as String,
      maxPrice: map['maxPrice'] == null ? null : map['maxPrice'] as String,
      spotInstanceType: map['spotInstanceType'] == null ? null : map['spotInstanceType'] as String,
      validUntil: map['validUntil'] == null ? null : map['validUntil'] as String,
    );
  }
}

