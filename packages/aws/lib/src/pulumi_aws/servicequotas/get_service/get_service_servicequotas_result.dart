// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getService.
class GetServiceServicequotasResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Code of the service.
  final String serviceCode;
  final String serviceName;

  GetServiceServicequotasResult({
    required this.id,
    required this.region,
    required this.serviceCode,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['region'] = region;
    map['serviceCode'] = serviceCode;
    map['serviceName'] = serviceName;
    return map;
  }

  factory GetServiceServicequotasResult.fromMap(Map<String, dynamic> map) {
    return GetServiceServicequotasResult(
      id: map['id'] as String,
      region: map['region'] as String,
      serviceCode: map['serviceCode'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}
