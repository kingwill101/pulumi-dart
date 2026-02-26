// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../multitenant_distribution_origin_custom_header/multitenant_distribution_origin_custom_header.dart';
import '../multitenant_distribution_origin_custom_origin_config/multitenant_distribution_origin_custom_origin_config.dart';
import '../multitenant_distribution_origin_origin_shield/multitenant_distribution_origin_origin_shield.dart';
import '../multitenant_distribution_origin_vpc_origin_config/multitenant_distribution_origin_vpc_origin_config.dart';

class MultitenantDistributionOrigin {
  /// Number of times that CloudFront attempts to connect to the origin. Must be between 1-3. Default: 3.
  final int? connectionAttempts;

  /// Number of seconds that CloudFront waits when trying to establish a connection to the origin. Must be between 1-10. Default: 10.
  final int? connectionTimeout;

  /// One or more sub-resources with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> and <span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> parameters that specify header data that will be sent to the origin. See Custom Header below.
  final List<MultitenantDistributionOriginCustomHeader>? customHeaders;

  /// CloudFront origin access identity to associate with the origin. See Custom Origin Config below.
  final List<MultitenantDistributionOriginCustomOriginConfig>?
      customOriginConfigs;

  /// DNS domain name of either the S3 bucket, or web site of your custom origin.
  final String domainName;

  /// Identifier for the distribution.
  final String id;

  /// CloudFront origin access control identifier to associate with the origin.
  final String? originAccessControlId;

  /// Optional element that causes CloudFront to request your content from a directory in your Amazon S3 bucket or your custom origin.
  final String? originPath;

  /// CloudFront Origin Shield configuration information. See Origin Shield below.
  final List<MultitenantDistributionOriginOriginShield>? originShields;

  /// Number of seconds that CloudFront waits for a response after forwarding a request to the origin. Default: 30.
  final int? responseCompletionTimeout;

  /// CloudFront VPC origin configuration. See VPC Origin Config below.
  final List<MultitenantDistributionOriginVpcOriginConfig>? vpcOriginConfigs;

  MultitenantDistributionOrigin({
    this.connectionAttempts,
    this.connectionTimeout,
    this.customHeaders,
    this.customOriginConfigs,
    required this.domainName,
    required this.id,
    this.originAccessControlId,
    this.originPath,
    this.originShields,
    this.responseCompletionTimeout,
    this.vpcOriginConfigs,
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
      map['customHeaders'] = Input.encodeList<
          MultitenantDistributionOriginCustomHeader,
          Map<String, dynamic>>(customHeadersValue, (value) => value.toMap());
    }
    final customOriginConfigsValue = customOriginConfigs;
    if (customOriginConfigsValue != null) {
      map['customOriginConfigs'] = Input.encodeList<
              MultitenantDistributionOriginCustomOriginConfig,
              Map<String, dynamic>>(
          customOriginConfigsValue, (value) => value.toMap());
    }
    map['domainName'] = domainName;
    map['id'] = id;
    final originAccessControlIdValue = originAccessControlId;
    if (originAccessControlIdValue != null) {
      map['originAccessControlId'] = originAccessControlIdValue;
    }
    final originPathValue = originPath;
    if (originPathValue != null) {
      map['originPath'] = originPathValue;
    }
    final originShieldsValue = originShields;
    if (originShieldsValue != null) {
      map['originShields'] = Input.encodeList<
          MultitenantDistributionOriginOriginShield,
          Map<String, dynamic>>(originShieldsValue, (value) => value.toMap());
    }
    final responseCompletionTimeoutValue = responseCompletionTimeout;
    if (responseCompletionTimeoutValue != null) {
      map['responseCompletionTimeout'] = responseCompletionTimeoutValue;
    }
    final vpcOriginConfigsValue = vpcOriginConfigs;
    if (vpcOriginConfigsValue != null) {
      map['vpcOriginConfigs'] = Input.encodeList<
              MultitenantDistributionOriginVpcOriginConfig,
              Map<String, dynamic>>(
          vpcOriginConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory MultitenantDistributionOrigin.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionOrigin(
      connectionAttempts: map['connectionAttempts'] == null
          ? null
          : map['connectionAttempts'] as int,
      connectionTimeout: map['connectionTimeout'] == null
          ? null
          : map['connectionTimeout'] as int,
      customHeaders: map['customHeaders'] == null
          ? null
          : Input.decodeList<MultitenantDistributionOriginCustomHeader>(
              map['customHeaders'],
              (value) => MultitenantDistributionOriginCustomHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
      customOriginConfigs: map['customOriginConfigs'] == null
          ? null
          : Input.decodeList<MultitenantDistributionOriginCustomOriginConfig>(
              map['customOriginConfigs'],
              (value) =>
                  MultitenantDistributionOriginCustomOriginConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      domainName: map['domainName'] as String,
      id: map['id'] as String,
      originAccessControlId: map['originAccessControlId'] == null
          ? null
          : map['originAccessControlId'] as String,
      originPath:
          map['originPath'] == null ? null : map['originPath'] as String,
      originShields: map['originShields'] == null
          ? null
          : Input.decodeList<MultitenantDistributionOriginOriginShield>(
              map['originShields'],
              (value) => MultitenantDistributionOriginOriginShield.fromMap(
                  (value as Map).cast<String, dynamic>())),
      responseCompletionTimeout: map['responseCompletionTimeout'] == null
          ? null
          : map['responseCompletionTimeout'] as int,
      vpcOriginConfigs: map['vpcOriginConfigs'] == null
          ? null
          : Input.decodeList<MultitenantDistributionOriginVpcOriginConfig>(
              map['vpcOriginConfigs'],
              (value) => MultitenantDistributionOriginVpcOriginConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
