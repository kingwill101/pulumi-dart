// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multitenant_distribution_origin_custom_header.dart';
import 'multitenant_distribution_origin_custom_origin_config.dart';
import 'multitenant_distribution_origin_origin_shield.dart';
import 'multitenant_distribution_origin_vpc_origin_config.dart';

class MultitenantDistributionOrigin {
  /// Number of times that CloudFront attempts to connect to the origin. Must be between 1-3. Default: 3.
  final pulumi.Input<int>? connectionAttempts;
  /// Number of seconds that CloudFront waits when trying to establish a connection to the origin. Must be between 1-10. Default: 10.
  final pulumi.Input<int>? connectionTimeout;
  /// One or more sub-resources with `name` and `value` parameters that specify header data that will be sent to the origin. See Custom Header below.
  final pulumi.Input<List<MultitenantDistributionOriginCustomHeader>>? customHeaders;
  /// CloudFront origin access identity to associate with the origin. See Custom Origin Config below.
  final pulumi.Input<List<MultitenantDistributionOriginCustomOriginConfig>>? customOriginConfigs;
  /// DNS domain name of either the S3 bucket, or web site of your custom origin.
  final pulumi.Input<String> domainName;
  /// Identifier for the distribution.
  final pulumi.Input<String> id;
  /// CloudFront origin access control identifier to associate with the origin.
  final pulumi.Input<String>? originAccessControlId;
  /// Optional element that causes CloudFront to request your content from a directory in your Amazon S3 bucket or your custom origin.
  final pulumi.Input<String>? originPath;
  /// CloudFront Origin Shield configuration information. See Origin Shield below.
  final pulumi.Input<List<MultitenantDistributionOriginOriginShield>>? originShields;
  /// Number of seconds that CloudFront waits for a response after forwarding a request to the origin. Default: 30.
  final pulumi.Input<int>? responseCompletionTimeout;
  /// CloudFront VPC origin configuration. See VPC Origin Config below.
  final pulumi.Input<List<MultitenantDistributionOriginVpcOriginConfig>>? vpcOriginConfigs;

  /// Creates a new [MultitenantDistributionOrigin].
  /// [connectionAttempts] Number of times that CloudFront attempts to connect to the origin. Must be between 1-3. Default: 3.
  /// [connectionTimeout] Number of seconds that CloudFront waits when trying to establish a connection to the origin. Must be between 1-10. Default: 10.
  /// [customHeaders] One or more sub-resources with `name` and `value` parameters that specify header data that will be sent to the origin. See Custom Header below.
  /// [customOriginConfigs] CloudFront origin access identity to associate with the origin. See Custom Origin Config below.
  /// [domainName] DNS domain name of either the S3 bucket, or web site of your custom origin.
  /// [id] Identifier for the distribution.
  /// [originAccessControlId] CloudFront origin access control identifier to associate with the origin.
  /// [originPath] Optional element that causes CloudFront to request your content from a directory in your Amazon S3 bucket or your custom origin.
  /// [originShields] CloudFront Origin Shield configuration information. See Origin Shield below.
  /// [responseCompletionTimeout] Number of seconds that CloudFront waits for a response after forwarding a request to the origin. Default: 30.
  /// [vpcOriginConfigs] CloudFront VPC origin configuration. See VPC Origin Config below.
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
    return <String, dynamic>{
      'connectionAttempts': ?connectionAttempts,
      'connectionTimeout': ?connectionTimeout,
      'customHeaders': ?pulumi.Input.mapOptionalInputValue<List<MultitenantDistributionOriginCustomHeader>, List<Map<String, dynamic>>>(customHeaders, (value) => pulumi.Input.encodeList<MultitenantDistributionOriginCustomHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customOriginConfigs': ?pulumi.Input.mapOptionalInputValue<List<MultitenantDistributionOriginCustomOriginConfig>, List<Map<String, dynamic>>>(customOriginConfigs, (value) => pulumi.Input.encodeList<MultitenantDistributionOriginCustomOriginConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'domainName': domainName,
      'id': id,
      'originAccessControlId': ?originAccessControlId,
      'originPath': ?originPath,
      'originShields': ?pulumi.Input.mapOptionalInputValue<List<MultitenantDistributionOriginOriginShield>, List<Map<String, dynamic>>>(originShields, (value) => pulumi.Input.encodeList<MultitenantDistributionOriginOriginShield, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseCompletionTimeout': ?responseCompletionTimeout,
      'vpcOriginConfigs': ?pulumi.Input.mapOptionalInputValue<List<MultitenantDistributionOriginVpcOriginConfig>, List<Map<String, dynamic>>>(vpcOriginConfigs, (value) => pulumi.Input.encodeList<MultitenantDistributionOriginVpcOriginConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MultitenantDistributionOrigin.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionOrigin(
      connectionAttempts: map['connectionAttempts'] == null ? null : ((map['connectionAttempts'] as int).input()).input(),
      connectionTimeout: map['connectionTimeout'] == null ? null : ((map['connectionTimeout'] as int).input()).input(),
      customHeaders: map['customHeaders'] == null ? null : ((pulumi.Input.decodeList<MultitenantDistributionOriginCustomHeader>(map['customHeaders']!, (value) => MultitenantDistributionOriginCustomHeader.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      customOriginConfigs: map['customOriginConfigs'] == null ? null : ((pulumi.Input.decodeList<MultitenantDistributionOriginCustomOriginConfig>(map['customOriginConfigs']!, (value) => MultitenantDistributionOriginCustomOriginConfig.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      domainName: (map['domainName'] as String).input(),
      id: (map['id'] as String).input(),
      originAccessControlId: map['originAccessControlId'] == null ? null : ((map['originAccessControlId'] as String).input()).input(),
      originPath: map['originPath'] == null ? null : ((map['originPath'] as String).input()).input(),
      originShields: map['originShields'] == null ? null : ((pulumi.Input.decodeList<MultitenantDistributionOriginOriginShield>(map['originShields']!, (value) => MultitenantDistributionOriginOriginShield.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      responseCompletionTimeout: map['responseCompletionTimeout'] == null ? null : ((map['responseCompletionTimeout'] as int).input()).input(),
      vpcOriginConfigs: map['vpcOriginConfigs'] == null ? null : ((pulumi.Input.decodeList<MultitenantDistributionOriginVpcOriginConfig>(map['vpcOriginConfigs']!, (value) => MultitenantDistributionOriginVpcOriginConfig.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

