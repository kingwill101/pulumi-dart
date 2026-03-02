// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SiteDeliveryTaskOssDelivery {
  final pulumi.Input<String>? aliuid;
  final pulumi.Input<String>? bucketName;
  final pulumi.Input<String>? prefixPath;
  /// The region ID of the service.
  final pulumi.Input<String>? region;

  /// Creates a new [SiteDeliveryTaskOssDelivery].
  /// [aliuid] Optional.
  /// [bucketName] Optional.
  /// [prefixPath] Optional.
  /// [region] The region ID of the service.
  SiteDeliveryTaskOssDelivery({
    this.aliuid,
    this.bucketName,
    this.prefixPath,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliuid': ?aliuid,
      'bucketName': ?bucketName,
      'prefixPath': ?prefixPath,
      'region': ?region,
    };
  }

  factory SiteDeliveryTaskOssDelivery.fromMap(Map<String, dynamic> map) {
    return SiteDeliveryTaskOssDelivery(
      aliuid: map['aliuid'] == null ? null : (map['aliuid'] as String).input(),
      bucketName: map['bucketName'] == null ? null : (map['bucketName'] as String).input(),
      prefixPath: map['prefixPath'] == null ? null : (map['prefixPath'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

