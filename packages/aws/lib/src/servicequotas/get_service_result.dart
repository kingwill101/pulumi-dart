// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getService.
class GetServiceResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Code of the service.
  final String serviceCode;
  final String serviceName;

  /// Creates a new [GetServiceResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [serviceCode] Code of the service.
  /// [serviceName] Required.
  GetServiceResult({
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

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      id: map['id'] as String,
      region: map['region'] as String,
      serviceCode: map['serviceCode'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}
