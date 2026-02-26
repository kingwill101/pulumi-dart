// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../distribution_origin_custom_header/distribution_origin_custom_header.dart';
import '../distribution_origin_custom_origin_config/distribution_origin_custom_origin_config.dart';
import '../distribution_origin_origin_shield/distribution_origin_origin_shield.dart';
import '../distribution_origin_s3_origin_config/distribution_origin_s3_origin_config.dart';
import '../distribution_origin_vpc_origin_config/distribution_origin_vpc_origin_config.dart';

class DistributionOrigin {
  /// Number of times that CloudFront attempts to connect to the origin. Must be between 1-3. Defaults to 3.
  final int? connectionAttempts;

  /// Number of seconds that CloudFront waits when trying to establish a connection to the origin. Must be between 1-10. Defaults to 10.
  final int? connectionTimeout;

  /// One or more sub-resources with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> and <span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> parameters that specify header data that will be sent to the origin (multiples allowed).
  final List<DistributionOriginCustomHeader>? customHeaders;

  /// The CloudFront custom origin configuration information. If an S3 origin is required, use <span pulumi-lang-nodejs="`originAccessControlId`" pulumi-lang-dotnet="`OriginAccessControlId`" pulumi-lang-go="`originAccessControlId`" pulumi-lang-python="`origin_access_control_id`" pulumi-lang-yaml="`originAccessControlId`" pulumi-lang-java="`originAccessControlId`">`origin_access_control_id`</span> or <span pulumi-lang-nodejs="`s3OriginConfig`" pulumi-lang-dotnet="`S3OriginConfig`" pulumi-lang-go="`s3OriginConfig`" pulumi-lang-python="`s3_origin_config`" pulumi-lang-yaml="`s3OriginConfig`" pulumi-lang-java="`s3OriginConfig`">`s3_origin_config`</span> instead.
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

  /// Time (in seconds) that a request from CloudFront to the origin can stay open and wait for a response. Must be integer greater than or equal to the value of <span pulumi-lang-nodejs="`originReadTimeout`" pulumi-lang-dotnet="`OriginReadTimeout`" pulumi-lang-go="`originReadTimeout`" pulumi-lang-python="`origin_read_timeout`" pulumi-lang-yaml="`originReadTimeout`" pulumi-lang-java="`originReadTimeout`">`origin_read_timeout`</span>. If omitted or explicitly set to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>, no maximum value is enforced.
  final int? responseCompletionTimeout;

  /// CloudFront S3 origin configuration information. If a custom origin is required, use <span pulumi-lang-nodejs="`customOriginConfig`" pulumi-lang-dotnet="`CustomOriginConfig`" pulumi-lang-go="`customOriginConfig`" pulumi-lang-python="`custom_origin_config`" pulumi-lang-yaml="`customOriginConfig`" pulumi-lang-java="`customOriginConfig`">`custom_origin_config`</span> instead.
  final DistributionOriginS3OriginConfig? s3OriginConfig;

  /// The VPC origin configuration.
  final DistributionOriginVpcOriginConfig? vpcOriginConfig;

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
    final map = <String, dynamic>{};
    final connectionAttemptsValue = connectionAttempts;
    if (connectionAttemptsValue != null) {
      map['connectionAttempts'] = connectionAttemptsValue;
    }
    final connectionTimeoutValue = connectionTimeout;
    if (connectionTimeoutValue != null) {
      map['connectionTimeout'] = connectionTimeoutValue;
    }
    final customHeadersValue = customHeaders;
    if (customHeadersValue != null) {
      map['customHeaders'] = Input.encodeList<DistributionOriginCustomHeader,
          Map<String, dynamic>>(customHeadersValue, (value) => value.toMap());
    }
    final customOriginConfigValue = customOriginConfig;
    if (customOriginConfigValue != null) {
      map['customOriginConfig'] = customOriginConfigValue.toMap();
    }
    map['domainName'] = domainName;
    final originAccessControlIdValue = originAccessControlId;
    if (originAccessControlIdValue != null) {
      map['originAccessControlId'] = originAccessControlIdValue;
    }
    map['originId'] = originId;
    final originPathValue = originPath;
    if (originPathValue != null) {
      map['originPath'] = originPathValue;
    }
    final originShieldValue = originShield;
    if (originShieldValue != null) {
      map['originShield'] = originShieldValue.toMap();
    }
    final responseCompletionTimeoutValue = responseCompletionTimeout;
    if (responseCompletionTimeoutValue != null) {
      map['responseCompletionTimeout'] = responseCompletionTimeoutValue;
    }
    final s3OriginConfigValue = s3OriginConfig;
    if (s3OriginConfigValue != null) {
      map['s3OriginConfig'] = s3OriginConfigValue.toMap();
    }
    final vpcOriginConfigValue = vpcOriginConfig;
    if (vpcOriginConfigValue != null) {
      map['vpcOriginConfig'] = vpcOriginConfigValue.toMap();
    }
    return map;
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
          : Input.decodeList<DistributionOriginCustomHeader>(
              map['customHeaders'],
              (value) => DistributionOriginCustomHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
      customOriginConfig: map['customOriginConfig'] == null
          ? null
          : DistributionOriginCustomOriginConfig.fromMap(
              (map['customOriginConfig'] as Map).cast<String, dynamic>()),
      domainName: map['domainName'] as String,
      originAccessControlId: map['originAccessControlId'] == null
          ? null
          : map['originAccessControlId'] as String,
      originId: map['originId'] as String,
      originPath:
          map['originPath'] == null ? null : map['originPath'] as String,
      originShield: map['originShield'] == null
          ? null
          : DistributionOriginOriginShield.fromMap(
              (map['originShield'] as Map).cast<String, dynamic>()),
      responseCompletionTimeout: map['responseCompletionTimeout'] == null
          ? null
          : map['responseCompletionTimeout'] as int,
      s3OriginConfig: map['s3OriginConfig'] == null
          ? null
          : DistributionOriginS3OriginConfig.fromMap(
              (map['s3OriginConfig'] as Map).cast<String, dynamic>()),
      vpcOriginConfig: map['vpcOriginConfig'] == null
          ? null
          : DistributionOriginVpcOriginConfig.fromMap(
              (map['vpcOriginConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
