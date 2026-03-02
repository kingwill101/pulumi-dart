// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTemplatesTemplate {
  /// Indicates whether the quota is global.
  final pulumi.Input<bool> globalQuota;
  /// Quota identifier.
  final pulumi.Input<String> quotaCode;
  /// Quota name.
  final pulumi.Input<String> quotaName;
  /// AWS Region to which the quota increases apply. Use `aws.getRegion` instead.
  final pulumi.Input<String> region;
  /// Service identifier.
  final pulumi.Input<String> serviceCode;
  /// Service name.
  final pulumi.Input<String> serviceName;
  /// Unit of measurement.
  final pulumi.Input<String> unit;
  /// The new, increased value for the quota.
  final pulumi.Input<double> value;

  /// Creates a new [GetTemplatesTemplate].
  /// [globalQuota] Indicates whether the quota is global.
  /// [quotaCode] Quota identifier.
  /// [quotaName] Quota name.
  /// [region] AWS Region to which the quota increases apply. Use `aws.getRegion` instead.
  /// [serviceCode] Service identifier.
  /// [serviceName] Service name.
  /// [unit] Unit of measurement.
  /// [value] The new, increased value for the quota.
  GetTemplatesTemplate({
    required this.globalQuota,
    required this.quotaCode,
    required this.quotaName,
    required this.region,
    required this.serviceCode,
    required this.serviceName,
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalQuota': globalQuota,
      'quotaCode': quotaCode,
      'quotaName': quotaName,
      'region': region,
      'serviceCode': serviceCode,
      'serviceName': serviceName,
      'unit': unit,
      'value': value,
    };
  }

  factory GetTemplatesTemplate.fromMap(Map<String, dynamic> map) {
    return GetTemplatesTemplate(
      globalQuota: (map['globalQuota'] as bool).input(),
      quotaCode: (map['quotaCode'] as String).input(),
      quotaName: (map['quotaName'] as String).input(),
      region: (map['region'] as String).input(),
      serviceCode: (map['serviceCode'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      unit: (map['unit'] as String).input(),
      value: (map['value'] as double).input(),
    );
  }
}

