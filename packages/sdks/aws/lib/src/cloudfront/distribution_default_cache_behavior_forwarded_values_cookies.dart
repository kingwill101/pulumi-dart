// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionDefaultCacheBehaviorForwardedValuesCookies {
  /// Whether you want CloudFront to forward cookies to the origin that is associated with this cache behavior. You can specify `all`, `none` or `whitelist`. If `whitelist`, you must include the subsequent `whitelisted_names`.
  final pulumi.Input<String> forward;
  /// If you have specified `whitelist` to `forward`, the whitelisted cookies that you want CloudFront to forward to your origin.
  final pulumi.Input<List<String>>? whitelistedNames;

  /// Creates a new [DistributionDefaultCacheBehaviorForwardedValuesCookies].
  /// [forward] Whether you want CloudFront to forward cookies to the origin that is associated with this cache behavior. You can specify `all`, `none` or `whitelist`. If `whitelist`, you must include the subsequent `whitelisted_names`.
  /// [whitelistedNames] If you have specified `whitelist` to `forward`, the whitelisted cookies that you want CloudFront to forward to your origin.
  DistributionDefaultCacheBehaviorForwardedValuesCookies({
    required this.forward,
    this.whitelistedNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forward': forward,
      'whitelistedNames': ?whitelistedNames,
    };
  }

  factory DistributionDefaultCacheBehaviorForwardedValuesCookies.fromMap(Map<String, dynamic> map) {
    return DistributionDefaultCacheBehaviorForwardedValuesCookies(
      forward: (map['forward'] as String).input(),
      whitelistedNames: map['whitelistedNames'] == null ? null : ((map['whitelistedNames'] as List).cast<String>()).input(),
    );
  }
}

