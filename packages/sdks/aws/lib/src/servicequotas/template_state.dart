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
    pulumi.Output<String>? awsRegion,
    pulumi.Output<bool>? globalQuota,
    pulumi.Output<String>? quotaCode,
    pulumi.Output<String>? quotaName,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serviceCode,
    pulumi.Output<String>? serviceName,
    pulumi.Output<String>? unit,
    pulumi.Output<double>? value,
  }) :
      awsRegion = pulumi.Input.asOptionalInput<String>(awsRegion),
      globalQuota = pulumi.Input.asOptionalInput<bool>(globalQuota),
      quotaCode = pulumi.Input.asOptionalInput<String>(quotaCode),
      quotaName = pulumi.Input.asOptionalInput<String>(quotaName),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceCode = pulumi.Input.asOptionalInput<String>(serviceCode),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      unit = pulumi.Input.asOptionalInput<String>(unit),
      value = pulumi.Input.asOptionalInput<double>(value);

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
      awsRegion: map['awsRegion'] == null ? null : pulumi.Output.create<String>(map['awsRegion'] as String),
      globalQuota: map['globalQuota'] == null ? null : pulumi.Output.create<bool>(map['globalQuota'] as bool),
      quotaCode: map['quotaCode'] == null ? null : pulumi.Output.create<String>(map['quotaCode'] as String),
      quotaName: map['quotaName'] == null ? null : pulumi.Output.create<String>(map['quotaName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceCode: map['serviceCode'] == null ? null : pulumi.Output.create<String>(map['serviceCode'] as String),
      serviceName: map['serviceName'] == null ? null : pulumi.Output.create<String>(map['serviceName'] as String),
      unit: map['unit'] == null ? null : pulumi.Output.create<String>(map['unit'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<double>(map['value'] as double),
    );
  }
}

