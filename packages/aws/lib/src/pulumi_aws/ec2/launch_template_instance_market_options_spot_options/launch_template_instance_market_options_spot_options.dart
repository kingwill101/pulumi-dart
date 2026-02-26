// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateInstanceMarketOptionsSpotOptions {
  /// The required duration in minutes. This value must be a multiple of 60.
  final int? blockDurationMinutes;

  /// The behavior when a Spot Instance is interrupted. Can be <span pulumi-lang-nodejs="`hibernate`" pulumi-lang-dotnet="`Hibernate`" pulumi-lang-go="`hibernate`" pulumi-lang-python="`hibernate`" pulumi-lang-yaml="`hibernate`" pulumi-lang-java="`hibernate`">`hibernate`</span>,
  /// <span pulumi-lang-nodejs="`stop`" pulumi-lang-dotnet="`Stop`" pulumi-lang-go="`stop`" pulumi-lang-python="`stop`" pulumi-lang-yaml="`stop`" pulumi-lang-java="`stop`">`stop`</span>, or <span pulumi-lang-nodejs="`terminate`" pulumi-lang-dotnet="`Terminate`" pulumi-lang-go="`terminate`" pulumi-lang-python="`terminate`" pulumi-lang-yaml="`terminate`" pulumi-lang-java="`terminate`">`terminate`</span>. (Default: <span pulumi-lang-nodejs="`terminate`" pulumi-lang-dotnet="`Terminate`" pulumi-lang-go="`terminate`" pulumi-lang-python="`terminate`" pulumi-lang-yaml="`terminate`" pulumi-lang-java="`terminate`">`terminate`</span>).
  final String? instanceInterruptionBehavior;

  /// The maximum hourly price you're willing to pay for the Spot Instances.
  final String? maxPrice;

  /// The Spot Instance request type. Can be `one-time`, or <span pulumi-lang-nodejs="`persistent`" pulumi-lang-dotnet="`Persistent`" pulumi-lang-go="`persistent`" pulumi-lang-python="`persistent`" pulumi-lang-yaml="`persistent`" pulumi-lang-java="`persistent`">`persistent`</span>.
  final String? spotInstanceType;

  /// The end date of the request.
  final String? validUntil;

  LaunchTemplateInstanceMarketOptionsSpotOptions({
    this.blockDurationMinutes,
    this.instanceInterruptionBehavior,
    this.maxPrice,
    this.spotInstanceType,
    this.validUntil,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final blockDurationMinutesValue = blockDurationMinutes;
    if (blockDurationMinutesValue != null) {
      map['blockDurationMinutes'] = blockDurationMinutesValue;
    }
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

  factory LaunchTemplateInstanceMarketOptionsSpotOptions.fromMap(
      Map<String, dynamic> map) {
    return LaunchTemplateInstanceMarketOptionsSpotOptions(
      blockDurationMinutes: map['blockDurationMinutes'] == null
          ? null
          : map['blockDurationMinutes'] as int,
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
