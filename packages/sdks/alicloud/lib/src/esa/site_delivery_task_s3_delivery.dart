// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SiteDeliveryTaskS3Delivery {
  final pulumi.Input<String>? accessKey;
  final pulumi.Input<String>? bucketPath;
  final pulumi.Input<String>? endpoint;
  final pulumi.Input<String>? prefixPath;
  final pulumi.Input<String>? region;
  final pulumi.Input<bool>? s3Cmpt;
  final pulumi.Input<String>? secretKey;
  /// Server-side encryption
  final pulumi.Input<bool>? serverSideEncryption;
  /// Authentication Type
  final pulumi.Input<String>? vertifyType;

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
      accessKey: map['accessKey'] == null ? null : (map['accessKey'] as String).input(),
      bucketPath: map['bucketPath'] == null ? null : (map['bucketPath'] as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      prefixPath: map['prefixPath'] == null ? null : (map['prefixPath'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      s3Cmpt: map['s3Cmpt'] == null ? null : (map['s3Cmpt'] as bool).input(),
      secretKey: map['secretKey'] == null ? null : (map['secretKey'] as String).input(),
      serverSideEncryption: map['serverSideEncryption'] == null ? null : (map['serverSideEncryption'] as bool).input(),
      vertifyType: map['vertifyType'] == null ? null : (map['vertifyType'] as String).input(),
    );
  }
}

