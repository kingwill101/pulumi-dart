// ignore_for_file: unused_element, unnecessary_cast


/// Configuration to bind a .NET Component to another .NET Component
class DotNetComponentServiceBindResponse {
  /// Name of the service bind
  final String? name;
  /// Resource id of the target service
  final String? serviceId;

  /// Creates a new [DotNetComponentServiceBindResponse].
  /// [name] Name of the service bind
  /// [serviceId] Resource id of the target service
  DotNetComponentServiceBindResponse({
    this.name,
    this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'serviceId': ?serviceId,
    };
  }

  factory DotNetComponentServiceBindResponse.fromMap(Map<String, dynamic> map) {
    return DotNetComponentServiceBindResponse(
      name: map['name'] == null ? null : map['name'] as String,
      serviceId: map['serviceId'] == null ? null : map['serviceId'] as String,
    );
  }
}

