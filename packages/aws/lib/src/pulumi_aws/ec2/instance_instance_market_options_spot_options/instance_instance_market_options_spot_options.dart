// ignore_for_file: unused_element, unnecessary_cast

class InstanceInstanceMarketOptionsSpotOptions {
  /// The behavior when a Spot Instance is interrupted. Valid values include <span pulumi-lang-nodejs="`hibernate`" pulumi-lang-dotnet="`Hibernate`" pulumi-lang-go="`hibernate`" pulumi-lang-python="`hibernate`" pulumi-lang-yaml="`hibernate`" pulumi-lang-java="`hibernate`">`hibernate`</span>, <span pulumi-lang-nodejs="`stop`" pulumi-lang-dotnet="`Stop`" pulumi-lang-go="`stop`" pulumi-lang-python="`stop`" pulumi-lang-yaml="`stop`" pulumi-lang-java="`stop`">`stop`</span>, <span pulumi-lang-nodejs="`terminate`" pulumi-lang-dotnet="`Terminate`" pulumi-lang-go="`terminate`" pulumi-lang-python="`terminate`" pulumi-lang-yaml="`terminate`" pulumi-lang-java="`terminate`">`terminate`</span> . The default is <span pulumi-lang-nodejs="`terminate`" pulumi-lang-dotnet="`Terminate`" pulumi-lang-go="`terminate`" pulumi-lang-python="`terminate`" pulumi-lang-yaml="`terminate`" pulumi-lang-java="`terminate`">`terminate`</span>.
  final String? instanceInterruptionBehavior;

  /// The maximum hourly price that you're willing to pay for a Spot Instance.
  final String? maxPrice;

  /// The Spot Instance request type. Valid values include `one-time`, <span pulumi-lang-nodejs="`persistent`" pulumi-lang-dotnet="`Persistent`" pulumi-lang-go="`persistent`" pulumi-lang-python="`persistent`" pulumi-lang-yaml="`persistent`" pulumi-lang-java="`persistent`">`persistent`</span>. Persistent Spot Instance requests are only supported when the instance interruption behavior is either hibernate or stop. The default is `one-time`.
  final String? spotInstanceType;

  /// The end date of the request, in UTC format (YYYY-MM-DDTHH:MM:SSZ). Supported only for persistent requests.
  final String? validUntil;

  InstanceInstanceMarketOptionsSpotOptions({
    this.instanceInterruptionBehavior,
    this.maxPrice,
    this.spotInstanceType,
    this.validUntil,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceInterruptionBehaviorValue = instanceInterruptionBehavior;
    if (instanceInterruptionBehaviorValue != null) {
      map['instanceInterruptionBehavior'] = instanceInterruptionBehaviorValue;
    }
    final maxPriceValue = maxPrice;
    if (maxPriceValue != null) {
      map['maxPrice'] = maxPriceValue;
    }
    final spotInstanceTypeValue = spotInstanceType;
    if (spotInstanceTypeValue != null) {
      map['spotInstanceType'] = spotInstanceTypeValue;
    }
    final validUntilValue = validUntil;
    if (validUntilValue != null) {
      map['validUntil'] = validUntilValue;
    }
    return map;
  }

  factory InstanceInstanceMarketOptionsSpotOptions.fromMap(
      Map<String, dynamic> map) {
    return InstanceInstanceMarketOptionsSpotOptions(
      instanceInterruptionBehavior: map['instanceInterruptionBehavior'] == null
          ? null
          : map['instanceInterruptionBehavior'] as String,
      maxPrice: map['maxPrice'] == null ? null : map['maxPrice'] as String,
      spotInstanceType: map['spotInstanceType'] == null
          ? null
          : map['spotInstanceType'] as String,
      validUntil:
          map['validUntil'] == null ? null : map['validUntil'] as String,
    );
  }
}
