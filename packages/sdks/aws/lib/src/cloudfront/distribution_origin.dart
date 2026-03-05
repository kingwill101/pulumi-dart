// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_origin_custom_header.dart';
import 'distribution_origin_custom_origin_config.dart';
import 'distribution_origin_origin_shield.dart';
import 'distribution_origin_s3_origin_config.dart';
import 'distribution_origin_vpc_origin_config.dart';

class DistributionOrigin {
  /// Number of times that CloudFront attempts to connect to the origin. Must be between 1-3. Defaults to 3.
  final pulumi.Input<int>? connectionAttempts;
  /// Number of seconds that CloudFront waits when trying to establish a connection to the origin. Must be between 1-10. Defaults to 10.
  final pulumi.Input<int>? connectionTimeout;
  /// One or more sub-resources with `name` and `value` parameters that specify header data that will be sent to the origin (multiples allowed).
  final pulumi.Input<List<DistributionOriginCustomHeader>>? customHeaders;
  /// The CloudFront custom origin configuration information. If an S3 origin is required, use `origin_access_control_id` or `s3_origin_config` instead.
  final pulumi.Input<DistributionOriginCustomOriginConfig>? customOriginConfig;
  /// Domain name corresponding to the distribution. For example: `d604721fxaaqy9.cloudfront.net`.
  final pulumi.Input<String> domainName;
  /// Unique identifier of a [CloudFront origin access control][8] for this origin.
  final pulumi.Input<String>? originAccessControlId;
  final pulumi.Input<String> originId;
  /// Optional element that causes CloudFront to request your content from a directory in your Amazon S3 bucket or your custom origin.
  final pulumi.Input<String>? originPath;
  /// CloudFront Origin Shield configuration information. Using Origin Shield can help reduce the load on your origin. For more information, see [Using Origin Shield](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html) in the Amazon CloudFront Developer Guide.
  final pulumi.Input<DistributionOriginOriginShield>? originShield;
  /// Time (in seconds) that a request from CloudFront to the origin can stay open and wait for a response. Must be integer greater than or equal to the value of `origin_read_timeout`. If omitted or explicitly set to `0`, no maximum value is enforced.
  final pulumi.Input<int>? responseCompletionTimeout;
  /// CloudFront S3 origin configuration information. If a custom origin is required, use `custom_origin_config` instead.
  final pulumi.Input<DistributionOriginS3OriginConfig>? s3OriginConfig;
  /// The VPC origin configuration.
  final pulumi.Input<DistributionOriginVpcOriginConfig>? vpcOriginConfig;

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
      'customHeaders': ?pulumi.Input.mapOptionalInputValue<List<DistributionOriginCustomHeader>, List<Map<String, dynamic>>>(customHeaders, (value) => pulumi.Input.encodeList<DistributionOriginCustomHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customOriginConfig': ?pulumi.Input.mapOptionalInputValue<DistributionOriginCustomOriginConfig, Map<String, dynamic>>(customOriginConfig, (value) => value.toMap()),
      'domainName': domainName,
      'originAccessControlId': ?originAccessControlId,
      'originId': originId,
      'originPath': ?originPath,
      'originShield': ?pulumi.Input.mapOptionalInputValue<DistributionOriginOriginShield, Map<String, dynamic>>(originShield, (value) => value.toMap()),
      'responseCompletionTimeout': ?responseCompletionTimeout,
      's3OriginConfig': ?pulumi.Input.mapOptionalInputValue<DistributionOriginS3OriginConfig, Map<String, dynamic>>(s3OriginConfig, (value) => value.toMap()),
      'vpcOriginConfig': ?pulumi.Input.mapOptionalInputValue<DistributionOriginVpcOriginConfig, Map<String, dynamic>>(vpcOriginConfig, (value) => value.toMap()),
    };
  }

  factory DistributionOrigin.fromMap(Map<String, dynamic> map) {
    return DistributionOrigin(
      connectionAttempts: (() { final guardedValue = map['connectionAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      connectionTimeout: (() { final guardedValue = map['connectionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      customHeaders: (() { final guardedValue = map['customHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionOriginCustomHeader>(guardedValue, (value) => DistributionOriginCustomHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customOriginConfig: (() { final guardedValue = map['customOriginConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionOriginCustomOriginConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      originAccessControlId: (() { final guardedValue = map['originAccessControlId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originId: pulumi.Input.fromValue(map['originId'] as String),
      originPath: (() { final guardedValue = map['originPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originShield: (() { final guardedValue = map['originShield']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionOriginOriginShield.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      responseCompletionTimeout: (() { final guardedValue = map['responseCompletionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      s3OriginConfig: (() { final guardedValue = map['s3OriginConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionOriginS3OriginConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcOriginConfig: (() { final guardedValue = map['vpcOriginConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionOriginVpcOriginConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

