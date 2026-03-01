// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_origin_config_response.dart';
import 'origin_custom_header_response.dart';
import 'origin_shield_response.dart';
import 's3_origin_config_response.dart';

/// Definition of Origin
class OriginResponse {
  /// The number of times that CloudFront attempts to connect to the origin. The minimum number is 1, the maximum is 3, and the default (if you don't specify otherwise) is 3. For a custom origin (including an Amazon S3 bucket that's configured with static website hosting), this value also specifies the number of times that CloudFront attempts to get a response from the origin, in the case of an [Origin Response Timeout](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginResponseTimeout). For more information, see [Origin Connection Attempts](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#origin-connection-attempts) in the *Amazon CloudFront Developer Guide*.
  final int? connectionAttempts;
  /// The number of seconds that CloudFront waits when trying to establish a connection to the origin. The minimum timeout is 1 second, the maximum is 10 seconds, and the default (if you don't specify otherwise) is 10 seconds. For more information, see [Origin Connection Timeout](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#origin-connection-timeout) in the *Amazon CloudFront Developer Guide*.
  final int? connectionTimeout;
  /// Use this type to specify an origin that is not an Amazon S3 bucket, with one exception. If the Amazon S3 bucket is configured with static website hosting, use this type. If the Amazon S3 bucket is not configured with static website hosting, use the ``S3OriginConfig`` type instead. A custom origin. A custom origin is any origin that is *not* an Amazon S3 bucket, with one exception. An Amazon S3 bucket that is [configured with static website hosting](https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html) *is* a custom origin.
  final CustomOriginConfigResponse? customOriginConfig;
  /// The domain name for the origin. For more information, see [Origin Domain Name](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesDomainName) in the *Amazon CloudFront Developer Guide*.
  final String? domainName;
  /// A unique identifier for the origin. This value must be unique within the distribution. Use this value to specify the ``TargetOriginId`` in a ``CacheBehavior`` or ``DefaultCacheBehavior``.
  final String? id;
  /// The unique identifier of an origin access control for this origin. For more information, see [Restricting access to an Amazon S3 origin](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html) in the *Amazon CloudFront Developer Guide*.
  final String? originAccessControlId;
  /// A list of HTTP header names and values that CloudFront adds to the requests that it sends to the origin. For more information, see [Adding Custom Headers to Origin Requests](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/add-origin-custom-headers.html) in the *Amazon CloudFront Developer Guide*.
  final List<OriginCustomHeaderResponse>? originCustomHeaders;
  /// An optional path that CloudFront appends to the origin domain name when CloudFront requests content from the origin. For more information, see [Origin Path](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginPath) in the *Amazon CloudFront Developer Guide*.
  final String? originPath;
  /// CloudFront Origin Shield. Using Origin Shield can help reduce the load on your origin. For more information, see [Using Origin Shield](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html) in the *Amazon CloudFront Developer Guide*. CloudFront Origin Shield. Using Origin Shield can help reduce the load on your origin. For more information, see [Using Origin Shield](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html) in the *Amazon CloudFront Developer Guide*.
  final OriginShieldResponse? originShield;
  /// Use this type to specify an origin that is an Amazon S3 bucket that is not configured with static website hosting. To specify any other type of origin, including an Amazon S3 bucket that is configured with static website hosting, use the ``CustomOriginConfig`` type instead. A complex type that contains information about the Amazon S3 origin. If the origin is a custom origin or an S3 bucket that is configured as a website endpoint, use the ``CustomOriginConfig`` element instead.
  final S3OriginConfigResponse? s3OriginConfig;

  /// Creates a new [OriginResponse].
  /// [connectionAttempts] The number of times that CloudFront attempts to connect to the origin. The minimum number is 1, the maximum is 3, and the default (if you don't specify otherwise) is 3. For a custom origin (including an Amazon S3 bucket that's configured with static website hosting), this value also specifies the number of times that CloudFront attempts to get a response from the origin, in the case of an [Origin Response Timeout](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginResponseTimeout). For more information, see [Origin Connection Attempts](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#origin-connection-attempts) in the *Amazon CloudFront Developer Guide*.
  /// [connectionTimeout] The number of seconds that CloudFront waits when trying to establish a connection to the origin. The minimum timeout is 1 second, the maximum is 10 seconds, and the default (if you don't specify otherwise) is 10 seconds. For more information, see [Origin Connection Timeout](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#origin-connection-timeout) in the *Amazon CloudFront Developer Guide*.
  /// [customOriginConfig] Use this type to specify an origin that is not an Amazon S3 bucket, with one exception. If the Amazon S3 bucket is configured with static website hosting, use this type. If the Amazon S3 bucket is not configured with static website hosting, use the ``S3OriginConfig`` type instead. A custom origin. A custom origin is any origin that is *not* an Amazon S3 bucket, with one exception. An Amazon S3 bucket that is [configured with static website hosting](https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html) *is* a custom origin.
  /// [domainName] The domain name for the origin. For more information, see [Origin Domain Name](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesDomainName) in the *Amazon CloudFront Developer Guide*.
  /// [id] A unique identifier for the origin. This value must be unique within the distribution. Use this value to specify the ``TargetOriginId`` in a ``CacheBehavior`` or ``DefaultCacheBehavior``.
  /// [originAccessControlId] The unique identifier of an origin access control for this origin. For more information, see [Restricting access to an Amazon S3 origin](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html) in the *Amazon CloudFront Developer Guide*.
  /// [originCustomHeaders] A list of HTTP header names and values that CloudFront adds to the requests that it sends to the origin. For more information, see [Adding Custom Headers to Origin Requests](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/add-origin-custom-headers.html) in the *Amazon CloudFront Developer Guide*.
  /// [originPath] An optional path that CloudFront appends to the origin domain name when CloudFront requests content from the origin. For more information, see [Origin Path](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginPath) in the *Amazon CloudFront Developer Guide*.
  /// [originShield] CloudFront Origin Shield. Using Origin Shield can help reduce the load on your origin. For more information, see [Using Origin Shield](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html) in the *Amazon CloudFront Developer Guide*. CloudFront Origin Shield. Using Origin Shield can help reduce the load on your origin. For more information, see [Using Origin Shield](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html) in the *Amazon CloudFront Developer Guide*.
  /// [s3OriginConfig] Use this type to specify an origin that is an Amazon S3 bucket that is not configured with static website hosting. To specify any other type of origin, including an Amazon S3 bucket that is configured with static website hosting, use the ``CustomOriginConfig`` type instead. A complex type that contains information about the Amazon S3 origin. If the origin is a custom origin or an S3 bucket that is configured as a website endpoint, use the ``CustomOriginConfig`` element instead.
  OriginResponse({
    this.connectionAttempts,
    this.connectionTimeout,
    this.customOriginConfig,
    this.domainName,
    this.id,
    this.originAccessControlId,
    this.originCustomHeaders,
    this.originPath,
    this.originShield,
    this.s3OriginConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionAttempts': ?connectionAttempts,
      'connectionTimeout': ?connectionTimeout,
      'customOriginConfig': ?customOriginConfig == null ? null : customOriginConfig!.toMap(),
      'domainName': ?domainName,
      'id': ?id,
      'originAccessControlId': ?originAccessControlId,
      'originCustomHeaders': ?originCustomHeaders == null ? null : pulumi.Input.encodeList<OriginCustomHeaderResponse, Map<String, dynamic>>(originCustomHeaders!, (value) => value.toMap()),
      'originPath': ?originPath,
      'originShield': ?originShield == null ? null : originShield!.toMap(),
      's3OriginConfig': ?s3OriginConfig == null ? null : s3OriginConfig!.toMap(),
    };
  }

  factory OriginResponse.fromMap(Map<String, dynamic> map) {
    return OriginResponse(
      connectionAttempts: map['connectionAttempts'] == null ? null : map['connectionAttempts'] as int,
      connectionTimeout: map['connectionTimeout'] == null ? null : map['connectionTimeout'] as int,
      customOriginConfig: map['customOriginConfig'] == null ? null : CustomOriginConfigResponse.fromMap((map['customOriginConfig'] as Map).cast<String, dynamic>()),
      domainName: map['domainName'] == null ? null : map['domainName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      originAccessControlId: map['originAccessControlId'] == null ? null : map['originAccessControlId'] as String,
      originCustomHeaders: map['originCustomHeaders'] == null ? null : pulumi.Input.decodeList<OriginCustomHeaderResponse>(map['originCustomHeaders'], (value) => OriginCustomHeaderResponse.fromMap((value as Map).cast<String, dynamic>())),
      originPath: map['originPath'] == null ? null : map['originPath'] as String,
      originShield: map['originShield'] == null ? null : OriginShieldResponse.fromMap((map['originShield'] as Map).cast<String, dynamic>()),
      s3OriginConfig: map['s3OriginConfig'] == null ? null : S3OriginConfigResponse.fromMap((map['s3OriginConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

