// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'geo_restriction.dart';

/// Definition of Restrictions
class Restrictions {
  /// A complex type that controls the countries in which your content is distributed. CF determines the location of your users using ``MaxMind`` GeoIP databases. To disable geo restriction, remove the [Restrictions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-restrictions) property from your stack template. A complex type that controls the countries in which your content is distributed. CF determines the location of your users using ``MaxMind`` GeoIP databases. To disable geo restriction, remove the [Restrictions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-restrictions) property from your stack template.
  final pulumi.Input<GeoRestriction>? geoRestriction;

  /// Creates a new [Restrictions].
  /// [geoRestriction] A complex type that controls the countries in which your content is distributed. CF determines the location of your users using ``MaxMind`` GeoIP databases. To disable geo restriction, remove the [Restrictions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-restrictions) property from your stack template. A complex type that controls the countries in which your content is distributed. CF determines the location of your users using ``MaxMind`` GeoIP databases. To disable geo restriction, remove the [Restrictions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-restrictions) property from your stack template.
  Restrictions({
    this.geoRestriction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geoRestriction': ?pulumi.Input.mapOptionalInputValue<GeoRestriction, Map<String, dynamic>>(geoRestriction, (value) => value.toMap()),
    };
  }

  factory Restrictions.fromMap(Map<String, dynamic> map) {
    return Restrictions(
      geoRestriction: map['geoRestriction'] == null ? null : (GeoRestriction.fromMap((map['geoRestriction']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

