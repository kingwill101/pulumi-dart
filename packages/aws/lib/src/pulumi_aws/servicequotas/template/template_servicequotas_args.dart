// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Template.
class TemplateServicequotasArgs {
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

  TemplateServicequotasArgs({
    this.awsRegion,
    required this.quotaCode,
    this.region,
    required this.serviceCode,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsRegionValue = awsRegion;
    if (awsRegionValue != null) {
      map['awsRegion'] = awsRegionValue;
    }
    map['quotaCode'] = quotaCode;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceCode'] = serviceCode;
    map['value'] = value;
    return map;
  }

  factory TemplateServicequotasArgs.fromMap(Map<String, dynamic> map) {
    return TemplateServicequotasArgs(
      awsRegion: pulumi.Input.asOptionalInput<String>(map['awsRegion']),
      quotaCode: pulumi.Input.asInput<String>(map['quotaCode']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serviceCode: pulumi.Input.asInput<String>(map['serviceCode']),
      value: pulumi.Input.asInput<double>(map['value']),
    );
  }
}
