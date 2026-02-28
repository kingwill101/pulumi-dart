// ignore_for_file: unused_element, unnecessary_cast

class DistributionOrderedCacheBehaviorForwardedValuesCookies {
  /// Whether you want CloudFront to forward cookies to the origin that is associated with this cache behavior. You can specify `all`, `none` or `whitelist`. If `whitelist`, you must include the subsequent `whitelisted_names`.
  final String forward;

  /// If you have specified `whitelist` to `forward`, the whitelisted cookies that you want CloudFront to forward to your origin.
  final List<String>? whitelistedNames;

  /// Creates a new [DistributionOrderedCacheBehaviorForwardedValuesCookies].
  /// [forward] Whether you want CloudFront to forward cookies to the origin that is associated with this cache behavior. You can specify `all`, `none` or `whitelist`. If `whitelist`, you must include the subsequent `whitelisted_names`.
  /// [whitelistedNames] If you have specified `whitelist` to `forward`, the whitelisted cookies that you want CloudFront to forward to your origin.
  DistributionOrderedCacheBehaviorForwardedValuesCookies({
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

  factory DistributionOrderedCacheBehaviorForwardedValuesCookies.fromMap(
      Map<String, dynamic> map) {
    return DistributionOrderedCacheBehaviorForwardedValuesCookies(
      forward: map['forward'] as String,
      whitelistedNames: map['whitelistedNames'] == null
          ? null
          : (map['whitelistedNames'] as List).cast<String>(),
    );
  }
}
