// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionOrderedCacheBehaviorForwardedValuesCookies {
  /// Whether you want CloudFront to forward cookies to the origin that is associated with this cache behavior. You can specify `all`, `none` or `whitelist`. If `whitelist`, you must include the subsequent `whitelistedNames`.
  final pulumi.Input<String> forward;
  /// If you have specified `whitelist` to `forward`, the whitelisted cookies that you want CloudFront to forward to your origin.
  final pulumi.Input<List<String>?>? whitelistedNames;

  /// Creates a new [DistributionOrderedCacheBehaviorForwardedValuesCookies].
  /// [forward] Whether you want CloudFront to forward cookies to the origin that is associated with this cache behavior. You can specify `all`, `none` or `whitelist`. If `whitelist`, you must include the subsequent `whitelistedNames`.
  /// [whitelistedNames] If you have specified `whitelist` to `forward`, the whitelisted cookies that you want CloudFront to forward to your origin.
  const DistributionOrderedCacheBehaviorForwardedValuesCookies({
    required this.forward,
    this.whitelistedNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forward': forward,
      'whitelistedNames': ?whitelistedNames,
    };
  }

  factory DistributionOrderedCacheBehaviorForwardedValuesCookies.fromMap(Map<String, dynamic> map) {
    return DistributionOrderedCacheBehaviorForwardedValuesCookies(
      forward: pulumi.Input.fromValue(map['forward'] as String),
      whitelistedNames: (() { final guardedValue = map['whitelistedNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
