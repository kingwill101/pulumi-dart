// ignore_for_file: unused_element, unnecessary_cast

import 'geo_restriction_response.dart';

/// Definition of Restrictions
class RestrictionsResponse {
  /// A complex type that controls the countries in which your content is distributed. CF determines the location of your users using ``MaxMind`` GeoIP databases. To disable geo restriction, remove the [Restrictions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-restrictions) property from your stack template. A complex type that controls the countries in which your content is distributed. CF determines the location of your users using ``MaxMind`` GeoIP databases. To disable geo restriction, remove the [Restrictions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-restrictions) property from your stack template.
  final GeoRestrictionResponse? geoRestriction;

  /// Creates a new [RestrictionsResponse].
  /// [geoRestriction] A complex type that controls the countries in which your content is distributed. CF determines the location of your users using ``MaxMind`` GeoIP databases. To disable geo restriction, remove the [Restrictions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-restrictions) property from your stack template. A complex type that controls the countries in which your content is distributed. CF determines the location of your users using ``MaxMind`` GeoIP databases. To disable geo restriction, remove the [Restrictions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-restrictions) property from your stack template.
  RestrictionsResponse({
    this.geoRestriction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geoRestriction': ?geoRestriction == null ? null : geoRestriction!.toMap(),
    };
  }

  factory RestrictionsResponse.fromMap(Map<String, dynamic> map) {
    return RestrictionsResponse(
      geoRestriction: map['geoRestriction'] == null ? null : GeoRestrictionResponse.fromMap((map['geoRestriction'] as Map).cast<String, dynamic>()),
    );
  }
}

