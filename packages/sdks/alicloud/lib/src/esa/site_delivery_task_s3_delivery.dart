// ignore_for_file: unused_element, unnecessary_cast


class SiteDeliveryTaskS3Delivery {
  final String? accessKey;
  final String? bucketPath;
  final String? endpoint;
  final String? prefixPath;
  final String? region;
  final bool? s3Cmpt;
  final String? secretKey;
  /// Server-side encryption
  final bool? serverSideEncryption;
  /// Authentication Type
  final String? vertifyType;

  /// Creates a new [SiteDeliveryTaskS3Delivery].
  /// [accessKey] Optional.
  /// [bucketPath] Optional.
  /// [endpoint] Optional.
  /// [prefixPath] Optional.
  /// [region] Optional.
  /// [s3Cmpt] Optional.
  /// [secretKey] Optional.
  /// [serverSideEncryption] Server-side encryption
  /// [vertifyType] Authentication Type
  SiteDeliveryTaskS3Delivery({
    this.accessKey,
    this.bucketPath,
    this.endpoint,
    this.prefixPath,
    this.region,
    this.s3Cmpt,
    this.secretKey,
    this.serverSideEncryption,
    this.vertifyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'bucketPath': ?bucketPath,
      'endpoint': ?endpoint,
      'prefixPath': ?prefixPath,
      'region': ?region,
      's3Cmpt': ?s3Cmpt,
      'secretKey': ?secretKey,
      'serverSideEncryption': ?serverSideEncryption,
      'vertifyType': ?vertifyType,
    };
  }

  factory SiteDeliveryTaskS3Delivery.fromMap(Map<String, dynamic> map) {
    return SiteDeliveryTaskS3Delivery(
      accessKey: map['accessKey'] == null ? null : map['accessKey'] as String,
      bucketPath: map['bucketPath'] == null ? null : map['bucketPath'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      prefixPath: map['prefixPath'] == null ? null : map['prefixPath'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      s3Cmpt: map['s3Cmpt'] == null ? null : map['s3Cmpt'] as bool,
      secretKey: map['secretKey'] == null ? null : map['secretKey'] as String,
      serverSideEncryption: map['serverSideEncryption'] == null ? null : map['serverSideEncryption'] as bool,
      vertifyType: map['vertifyType'] == null ? null : map['vertifyType'] as String,
    );
  }
}

