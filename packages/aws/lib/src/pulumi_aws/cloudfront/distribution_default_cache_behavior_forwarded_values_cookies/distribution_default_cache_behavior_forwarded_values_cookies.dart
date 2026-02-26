// ignore_for_file: unused_element, unnecessary_cast

class DistributionDefaultCacheBehaviorForwardedValuesCookies {
  /// Whether you want CloudFront to forward cookies to the origin that is associated with this cache behavior. You can specify <span pulumi-lang-nodejs="`all`" pulumi-lang-dotnet="`All`" pulumi-lang-go="`all`" pulumi-lang-python="`all`" pulumi-lang-yaml="`all`" pulumi-lang-java="`all`">`all`</span>, <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span> or <span pulumi-lang-nodejs="`whitelist`" pulumi-lang-dotnet="`Whitelist`" pulumi-lang-go="`whitelist`" pulumi-lang-python="`whitelist`" pulumi-lang-yaml="`whitelist`" pulumi-lang-java="`whitelist`">`whitelist`</span>. If <span pulumi-lang-nodejs="`whitelist`" pulumi-lang-dotnet="`Whitelist`" pulumi-lang-go="`whitelist`" pulumi-lang-python="`whitelist`" pulumi-lang-yaml="`whitelist`" pulumi-lang-java="`whitelist`">`whitelist`</span>, you must include the subsequent <span pulumi-lang-nodejs="`whitelistedNames`" pulumi-lang-dotnet="`WhitelistedNames`" pulumi-lang-go="`whitelistedNames`" pulumi-lang-python="`whitelisted_names`" pulumi-lang-yaml="`whitelistedNames`" pulumi-lang-java="`whitelistedNames`">`whitelisted_names`</span>.
  final String forward;

  /// If you have specified <span pulumi-lang-nodejs="`whitelist`" pulumi-lang-dotnet="`Whitelist`" pulumi-lang-go="`whitelist`" pulumi-lang-python="`whitelist`" pulumi-lang-yaml="`whitelist`" pulumi-lang-java="`whitelist`">`whitelist`</span> to <span pulumi-lang-nodejs="`forward`" pulumi-lang-dotnet="`Forward`" pulumi-lang-go="`forward`" pulumi-lang-python="`forward`" pulumi-lang-yaml="`forward`" pulumi-lang-java="`forward`">`forward`</span>, the whitelisted cookies that you want CloudFront to forward to your origin.
  final List<String>? whitelistedNames;

  DistributionDefaultCacheBehaviorForwardedValuesCookies({
    required this.forward,
    this.whitelistedNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['forward'] = forward;
    final whitelistedNamesValue = whitelistedNames;
    if (whitelistedNamesValue != null) {
      map['whitelistedNames'] = whitelistedNamesValue;
    }
    return map;
  }

  factory DistributionDefaultCacheBehaviorForwardedValuesCookies.fromMap(
      Map<String, dynamic> map) {
    return DistributionDefaultCacheBehaviorForwardedValuesCookies(
      forward: map['forward'] as String,
      whitelistedNames: map['whitelistedNames'] == null
          ? null
          : (map['whitelistedNames'] as List).cast<String>(),
    );
  }
}
