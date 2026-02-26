// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Template.
class TemplateArgs2 {
  /// AWS Region to which the template applies.
  final Input<String>? awsRegion;

  /// Quota identifier. To find the quota code for a specific quota, use the<span pulumi-lang-nodejs=" aws.servicequotas.ServiceQuota " pulumi-lang-dotnet=" aws.servicequotas.ServiceQuota " pulumi-lang-go=" servicequotas.ServiceQuota " pulumi-lang-python=" servicequotas.ServiceQuota " pulumi-lang-yaml=" aws.servicequotas.ServiceQuota " pulumi-lang-java=" aws.servicequotas.ServiceQuota "> aws.servicequotas.ServiceQuota </span>data source.
  final Input<String> quotaCode;

  /// AWS Region to which the template applies. Use <span pulumi-lang-nodejs="`aws.getRegion`" pulumi-lang-dotnet="`aws.getRegion`" pulumi-lang-go="`getRegion`" pulumi-lang-python="`get_region`" pulumi-lang-yaml="`aws.getRegion`" pulumi-lang-java="`aws.getRegion`">`aws.getRegion`</span> instead.
  final Input<String>? region;

  /// Service identifier. To find the service code value for an AWS service, use the<span pulumi-lang-nodejs=" aws.servicequotas.getService " pulumi-lang-dotnet=" aws.servicequotas.getService " pulumi-lang-go=" servicequotas.getService " pulumi-lang-python=" servicequotas_get_service " pulumi-lang-yaml=" aws.servicequotas.getService " pulumi-lang-java=" aws.servicequotas.getService "> aws.servicequotas.getService </span>data source.
  final Input<String> serviceCode;

  /// The new, increased value for the quota.
  final Input<double> value;

  TemplateArgs2({
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

  factory TemplateArgs2.fromMap(Map<String, dynamic> map) {
    return TemplateArgs2(
      awsRegion: Input.asOptionalInput<String>(map['awsRegion']),
      quotaCode: Input.asInput<String>(map['quotaCode']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceCode: Input.asInput<String>(map['serviceCode']),
      value: Input.asInput<double>(map['value']),
    );
  }
}
