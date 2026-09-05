// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getService.
class GetServiceResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// Code of the service.
  final String? serviceCode;
  final String? serviceName;

  /// Creates a new [GetServiceResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [serviceCode] Code of the service.
  /// [serviceName] Optional.
  const GetServiceResult({
    this.id,
    this.region,
    this.serviceCode,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'region': ?region,
      'serviceCode': ?serviceCode,
      'serviceName': ?serviceName,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceCode: (() { final guardedValue = map['serviceCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
