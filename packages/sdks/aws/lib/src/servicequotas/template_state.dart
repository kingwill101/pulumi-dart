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
  const TemplateState({
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
      awsRegion: (() { final guardedValue = map['awsRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalQuota: (() { final guardedValue = map['globalQuota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      quotaCode: (() { final guardedValue = map['quotaCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaName: (() { final guardedValue = map['quotaName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceCode: (() { final guardedValue = map['serviceCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

