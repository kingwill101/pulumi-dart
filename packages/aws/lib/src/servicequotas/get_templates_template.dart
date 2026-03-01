// ignore_for_file: unused_element, unnecessary_cast


class GetTemplatesTemplate {
  /// Indicates whether the quota is global.
  final bool globalQuota;
  /// Quota identifier.
  final String quotaCode;
  /// Quota name.
  final String quotaName;
  /// AWS Region to which the quota increases apply. Use `aws.getRegion` instead.
  final String region;
  /// Service identifier.
  final String serviceCode;
  /// Service name.
  final String serviceName;
  /// Unit of measurement.
  final String unit;
  /// The new, increased value for the quota.
  final double value;

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
      globalQuota: map['globalQuota'] as bool,
      quotaCode: map['quotaCode'] as String,
      quotaName: map['quotaName'] as String,
      region: map['region'] as String,
      serviceCode: map['serviceCode'] as String,
      serviceName: map['serviceName'] as String,
      unit: map['unit'] as String,
      value: map['value'] as double,
    );
  }
}

