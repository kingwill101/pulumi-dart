// ignore_for_file: unused_element, unnecessary_cast

class GetTemplatesTemplate {
  /// Indicates whether the quota is global.
  final bool globalQuota;

  /// Quota identifier.
  final String quotaCode;

  /// Quota name.
  final String quotaName;

  /// AWS Region to which the quota increases apply. Use <span pulumi-lang-nodejs="`aws.getRegion`" pulumi-lang-dotnet="`aws.getRegion`" pulumi-lang-go="`getRegion`" pulumi-lang-python="`get_region`" pulumi-lang-yaml="`aws.getRegion`" pulumi-lang-java="`aws.getRegion`">`aws.getRegion`</span> instead.
  final String region;

  /// Service identifier.
  final String serviceCode;

  /// Service name.
  final String serviceName;

  /// Unit of measurement.
  final String unit;

  /// The new, increased value for the quota.
  final double value;

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
    final map = <String, dynamic>{};
    map['globalQuota'] = globalQuota;
    map['quotaCode'] = quotaCode;
    map['quotaName'] = quotaName;
    map['region'] = region;
    map['serviceCode'] = serviceCode;
    map['serviceName'] = serviceName;
    map['unit'] = unit;
    map['value'] = value;
    return map;
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
