// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of OriginShield
class OriginShieldResponse {
  /// A flag that specifies whether Origin Shield is enabled. When it's enabled, CloudFront routes all requests through Origin Shield, which can help protect your origin. When it's disabled, CloudFront might send requests directly to your origin from multiple edge locations or regional edge caches.
  final pulumi.Input<bool>? enabled;

  /// The AWS-Region for Origin Shield. Specify the AWS-Region that has the lowest latency to your origin. To specify a region, use the region code, not the region name. For example, specify the US East (Ohio) region as ``us-east-2``. When you enable CloudFront Origin Shield, you must specify the AWS-Region for Origin Shield. For the list of AWS-Regions that you can specify, and for help choosing the best Region for your origin, see [Choosing the for Origin Shield](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html#choose-origin-shield-region) in the *Amazon CloudFront Developer Guide*.
  final pulumi.Input<String>? originShieldRegion;

  /// Creates a new [OriginShieldResponse].
  /// [enabled] A flag that specifies whether Origin Shield is enabled. When it's enabled, CloudFront routes all requests through Origin Shield, which can help protect your origin. When it's disabled, CloudFront might send requests directly to your origin from multiple edge locations or regional edge caches.
  /// [originShieldRegion] The AWS-Region for Origin Shield. Specify the AWS-Region that has the lowest latency to your origin. To specify a region, use the region code, not the region name. For example, specify the US East (Ohio) region as ``us-east-2``. When you enable CloudFront Origin Shield, you must specify the AWS-Region for Origin Shield. For the list of AWS-Regions that you can specify, and for help choosing the best Region for your origin, see [Choosing the for Origin Shield](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html#choose-origin-shield-region) in the *Amazon CloudFront Developer Guide*.
  OriginShieldResponse({this.enabled, this.originShieldRegion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'originShieldRegion': ?originShieldRegion,
    };
  }

  factory OriginShieldResponse.fromMap(Map<String, dynamic> map) {
    return OriginShieldResponse(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      originShieldRegion: (() {
        final guardedValue = map['originShieldRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
