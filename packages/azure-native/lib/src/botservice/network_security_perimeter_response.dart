// ignore_for_file: unused_element, unnecessary_cast


/// Information about Network Security Perimeter
class NetworkSecurityPerimeterResponse {
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Location of the Network Security Perimeter
  final String? location;
  /// Guid of the Network Security Perimeter
  final String? perimeterGuid;

  /// Creates a new [NetworkSecurityPerimeterResponse].
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] Location of the Network Security Perimeter
  /// [perimeterGuid] Guid of the Network Security Perimeter
  NetworkSecurityPerimeterResponse({
    required this.id,
    this.location,
    this.perimeterGuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': ?location,
      'perimeterGuid': ?perimeterGuid,
    };
  }

  factory NetworkSecurityPerimeterResponse.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityPerimeterResponse(
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      perimeterGuid: map['perimeterGuid'] == null ? null : map['perimeterGuid'] as String,
    );
  }
}

