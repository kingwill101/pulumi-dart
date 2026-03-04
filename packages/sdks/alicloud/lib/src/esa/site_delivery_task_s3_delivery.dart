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
      accessKey: (() {
        final guardedValue = map['accessKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bucketPath: (() {
        final guardedValue = map['bucketPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      prefixPath: (() {
        final guardedValue = map['prefixPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      s3Cmpt: (() {
        final guardedValue = map['s3Cmpt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      secretKey: (() {
        final guardedValue = map['secretKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverSideEncryption: (() {
        final guardedValue = map['serverSideEncryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      vertifyType: (() {
        final guardedValue = map['vertifyType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
