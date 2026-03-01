// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_origin_custom_header.dart';
import 'distribution_origin_custom_origin_config.dart';
import 'distribution_origin_origin_shield.dart';
import 'distribution_origin_s3_origin_config.dart';
import 'distribution_origin_vpc_origin_config.dart';

class DistributionOrigin {
  /// Number of times that CloudFront attempts to connect to the origin. Must be between 1-3. Defaults to 3.
  final int? connectionAttempts;

  /// Number of seconds that CloudFront waits when trying to establish a connection to the origin. Must be between 1-10. Defaults to 10.
  final int? connectionTimeout;

  /// One or more sub-resources with `name` and `value` parameters that specify header data that will be sent to the origin (multiples allowed).
  final List<DistributionOriginCustomHeader>? customHeaders;

  /// The CloudFront custom origin configuration information. If an S3 origin is required, use `origin_access_control_id` or `s3_origin_config` instead.
  final DistributionOriginCustomOriginConfig? customOriginConfig;

  /// Domain name corresponding to the distribution. For example: `d604721fxaaqy9.cloudfront.net`.
  final String domainName;

  /// Unique identifier of a [CloudFront origin access control][8] for this origin.
  final String? originAccessControlId;
  final String originId;

  /// Optional element that causes CloudFront to request your content from a directory in your Amazon S3 bucket or your custom origin.
  final String? originPath;

  /// CloudFront Origin Shield configuration information. Using Origin Shield can help reduce the load on your origin. For more information, see [Using Origin Shield](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html) in the Amazon CloudFront Developer Guide.
  final DistributionOriginOriginShield? originShield;

  /// Time (in seconds) that a request from CloudFront to the origin can stay open and wait for a response. Must be integer greater than or equal to the value of `origin_read_timeout`. If omitted or explicitly set to `0`, no maximum value is enforced.
  final int? responseCompletionTimeout;

  /// CloudFront S3 origin configuration information. If a custom origin is required, use `custom_origin_config` instead.
  final DistributionOriginS3OriginConfig? s3OriginConfig;

  /// The VPC origin configuration.
  final DistributionOriginVpcOriginConfig? vpcOriginConfig;

  /// Creates a new [DistributionOrigin].
  /// [connectionAttempts] Number of times that CloudFront attempts to connect to the origin. Must be between 1-3. Defaults to 3.
  /// [connectionTimeout] Number of seconds that CloudFront waits when trying to establish a connection to the origin. Must be between 1-10. Defaults to 10.
  /// [customHeaders] One or more sub-resources with `name` and `value` parameters that specify header data that will be sent to the origin (multiples allowed).
  /// [customOriginConfig] The CloudFront custom origin configuration information. If an S3 origin is required, use `origin_access_control_id` or `s3_origin_config` instead.
  /// [domainName] Domain name corresponding to the distribution. For example: `d604721fxaaqy9.cloudfront.net`.
  /// [originAccessControlId] Unique identifier of a [CloudFront origin access control][8] for this origin.
  /// [originId] Required.
  /// [originPath] Optional element that causes CloudFront to request your content from a directory in your Amazon S3 bucket or your custom origin.
  /// [originShield] CloudFront Origin Shield configuration information. Using Origin Shield can help reduce the load on your origin. For more information, see [Using Origin Shield](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html) in the Amazon CloudFront Developer Guide.
  /// [responseCompletionTimeout] Time (in seconds) that a request from CloudFront to the origin can stay open and wait for a response. Must be integer greater than or equal to the value of `origin_read_timeout`. If omitted or explicitly set to `0`, no maximum value is enforced.
  /// [s3OriginConfig] CloudFront S3 origin configuration information. If a custom origin is required, use `custom_origin_config` instead.
  /// [vpcOriginConfig] The VPC origin configuration.
  DistributionOrigin({
    this.connectionAttempts,
    this.connectionTimeout,
    this.customHeaders,
    this.customOriginConfig,
    required this.domainName,
    this.originAccessControlId,
    required this.originId,
    this.originPath,
    this.originShield,
    this.responseCompletionTimeout,
    this.s3OriginConfig,
    this.vpcOriginConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionAttempts': ?connectionAttempts,
      'connectionTimeout': ?connectionTimeout,
      'customHeaders': ?customHeaders == null
          ? null
          : pulumi.Input.encodeList<
              DistributionOriginCustomHeader,
              Map<String, dynamic>
            >(customHeaders!, (value) => value.toMap()),
      'customOriginConfig': ?customOriginConfig == null
          ? null
          : customOriginConfig!.toMap(),
      'domainName': domainName,
      'originAccessControlId': ?originAccessControlId,
      'originId': originId,
      'originPath': ?originPath,
      'originShield': ?originShield == null ? null : originShield!.toMap(),
      'responseCompletionTimeout': ?responseCompletionTimeout,
      's3OriginConfig': ?s3OriginConfig == null
          ? null
          : s3OriginConfig!.toMap(),
      'vpcOriginConfig': ?vpcOriginConfig == null
          ? null
          : vpcOriginConfig!.toMap(),
    };
  }

  factory DistributionOrigin.fromMap(Map<String, dynamic> map) {
    return DistributionOrigin(
      connectionAttempts: map['connectionAttempts'] == null
          ? null
          : map['connectionAttempts'] as int,
      connectionTimeout: map['connectionTimeout'] == null
          ? null
          : map['connectionTimeout'] as int,
      customHeaders: map['customHeaders'] == null
          ? null
          : pulumi.Input.decodeList<DistributionOriginCustomHeader>(
              map['customHeaders'],
              (value) => DistributionOriginCustomHeader.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      customOriginConfig: map['customOriginConfig'] == null
          ? null
          : DistributionOriginCustomOriginConfig.fromMap(
              (map['customOriginConfig'] as Map).cast<String, dynamic>(),
            ),
      domainName: map['domainName'] as String,
      originAccessControlId: map['originAccessControlId'] == null
          ? null
          : map['originAccessControlId'] as String,
      originId: map['originId'] as String,
      originPath: map['originPath'] == null
          ? null
          : map['originPath'] as String,
      originShield: map['originShield'] == null
          ? null
          : DistributionOriginOriginShield.fromMap(
              (map['originShield'] as Map).cast<String, dynamic>(),
            ),
      responseCompletionTimeout: map['responseCompletionTimeout'] == null
          ? null
          : map['responseCompletionTimeout'] as int,
      s3OriginConfig: map['s3OriginConfig'] == null
          ? null
          : DistributionOriginS3OriginConfig.fromMap(
              (map['s3OriginConfig'] as Map).cast<String, dynamic>(),
            ),
      vpcOriginConfig: map['vpcOriginConfig'] == null
          ? null
          : DistributionOriginVpcOriginConfig.fromMap(
              (map['vpcOriginConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
