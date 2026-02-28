// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicequotas_template_template_args_doc}
/// The set of arguments for Template.
/// {@endtemplate}
/// {@macro pulumi_servicequotas_template_template_args_doc}
class TemplateArgs {
  /// AWS Region to which the template applies.
  final pulumi.Input<String>? awsRegion;
  /// Quota identifier. To find the quota code for a specific quota, use the aws.servicequotas.ServiceQuota data source.
  final pulumi.Input<String> quotaCode;
  /// AWS Region to which the template applies. Use `aws.getRegion` instead.
  final pulumi.Input<String>? region;
  /// Service identifier. To find the service code value for an AWS service, use the aws.servicequotas.getService data source.
  final pulumi.Input<String> serviceCode;
  /// The new, increased value for the quota.
  final pulumi.Input<double> value;

  /// Creates a new [TemplateArgs].
  /// [awsRegion] AWS Region to which the template applies.
  /// [quotaCode] Quota identifier. To find the quota code for a specific quota, use the aws.servicequotas.ServiceQuota data source.
  /// [region] AWS Region to which the template applies. Use `aws.getRegion` instead.
  /// [serviceCode] Service identifier. To find the service code value for an AWS service, use the aws.servicequotas.getService data source.
  /// [value] The new, increased value for the quota.
  TemplateArgs({
    String? awsRegion,
    required String quotaCode,
    String? region,
    required String serviceCode,
    required double value,
  }) :
      awsRegion = pulumi.Input.asOptionalInput<String>(awsRegion),
      quotaCode = pulumi.Input.asInput<String>(quotaCode),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceCode = pulumi.Input.asInput<String>(serviceCode),
      value = pulumi.Input.asInput<double>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegion': ?awsRegion,
      'quotaCode': quotaCode,
      'region': ?region,
      'serviceCode': serviceCode,
      'value': value,
    };
  }

  factory TemplateArgs.fromMap(Map<String, dynamic> map) {
    return TemplateArgs(
      awsRegion: map['awsRegion'] == null ? null : map['awsRegion'] as String,
      quotaCode: map['quotaCode'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serviceCode: map['serviceCode'] as String,
      value: map['value'] as double,
    );
  }
}

