// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Template resources.
class TemplateState {
  /// AWS Region to which the template applies.
  final pulumi.Input<String>? awsRegion;
  /// Indicates whether the quota is global.
  final pulumi.Input<bool>? globalQuota;
  /// Quota identifier. To find the quota code for a specific quota, use the aws.servicequotas.ServiceQuota data source.
  final pulumi.Input<String>? quotaCode;
  /// Quota name.
  final pulumi.Input<String>? quotaName;
  /// AWS Region to which the template applies. Use `aws.getRegion` instead.
  final pulumi.Input<String>? region;
  /// Service identifier. To find the service code value for an AWS service, use the aws.servicequotas.getService data source.
  final pulumi.Input<String>? serviceCode;
  /// Service name.
  final pulumi.Input<String>? serviceName;
  /// Unit of measurement.
  final pulumi.Input<String>? unit;
  /// The new, increased value for the quota.
  final pulumi.Input<double>? value;

  /// Creates a new [TemplateState].
  /// [awsRegion] AWS Region to which the template applies.
  /// [globalQuota] Indicates whether the quota is global.
  /// [quotaCode] Quota identifier. To find the quota code for a specific quota, use the aws.servicequotas.ServiceQuota data source.
  /// [quotaName] Quota name.
  /// [region] AWS Region to which the template applies. Use `aws.getRegion` instead.
  /// [serviceCode] Service identifier. To find the service code value for an AWS service, use the aws.servicequotas.getService data source.
  /// [serviceName] Service name.
  /// [unit] Unit of measurement.
  /// [value] The new, increased value for the quota.
  TemplateState({
    this.awsRegion,
    this.globalQuota,
    this.quotaCode,
    this.quotaName,
    this.region,
    this.serviceCode,
    this.serviceName,
    this.unit,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegion': ?awsRegion,
      'globalQuota': ?globalQuota,
      'quotaCode': ?quotaCode,
      'quotaName': ?quotaName,
      'region': ?region,
      'serviceCode': ?serviceCode,
      'serviceName': ?serviceName,
      'unit': ?unit,
      'value': ?value,
    };
  }

  factory TemplateState.fromMap(Map<String, dynamic> map) {
    return TemplateState(
      awsRegion: map['awsRegion'] == null ? null : ((map['awsRegion'] as String).input()).input(),
      globalQuota: map['globalQuota'] == null ? null : ((map['globalQuota'] as bool).input()).input(),
      quotaCode: map['quotaCode'] == null ? null : ((map['quotaCode'] as String).input()).input(),
      quotaName: map['quotaName'] == null ? null : ((map['quotaName'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      serviceCode: map['serviceCode'] == null ? null : ((map['serviceCode'] as String).input()).input(),
      serviceName: map['serviceName'] == null ? null : ((map['serviceName'] as String).input()).input(),
      unit: map['unit'] == null ? null : ((map['unit'] as String).input()).input(),
      value: map['value'] == null ? null : ((map['value'] as double).input()).input(),
    );
  }
}

