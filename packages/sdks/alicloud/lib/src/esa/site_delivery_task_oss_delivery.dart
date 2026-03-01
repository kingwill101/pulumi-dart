// ignore_for_file: unused_element, unnecessary_cast


class SiteDeliveryTaskOssDelivery {
  final String? aliuid;
  final String? bucketName;
  final String? prefixPath;
  /// The region ID of the service.
  final String? region;

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
      aliuid: map['aliuid'] == null ? null : map['aliuid'] as String,
      bucketName: map['bucketName'] == null ? null : map['bucketName'] as String,
      prefixPath: map['prefixPath'] == null ? null : map['prefixPath'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

