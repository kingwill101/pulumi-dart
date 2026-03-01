// ignore_for_file: unused_element, unnecessary_cast


/// Configuration to bind a Java Component to another Java Component
class JavaComponentServiceBindResponse {
  /// Name of the service bind
  final String? name;
  /// Resource id of the target service
  final String? serviceId;

  /// Creates a new [JavaComponentServiceBindResponse].
  /// [name] Name of the service bind
  /// [serviceId] Resource id of the target service
  JavaComponentServiceBindResponse({
    this.name,
    this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'serviceId': ?serviceId,
    };
  }

  factory JavaComponentServiceBindResponse.fromMap(Map<String, dynamic> map) {
    return JavaComponentServiceBindResponse(
      name: map['name'] == null ? null : map['name'] as String,
      serviceId: map['serviceId'] == null ? null : map['serviceId'] as String,
    );
  }
}

