// ignore_for_file: unused_element, unnecessary_cast


/// Configuration to bind a Java Component to another Java Component
class JavaComponentServiceBind {
  /// Name of the service bind
  final String? name;
  /// Resource id of the target service
  final String? serviceId;

  /// Creates a new [JavaComponentServiceBind].
  /// [name] Name of the service bind
  /// [serviceId] Resource id of the target service
  JavaComponentServiceBind({
    this.name,
    this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'serviceId': ?serviceId,
    };
  }

  factory JavaComponentServiceBind.fromMap(Map<String, dynamic> map) {
    return JavaComponentServiceBind(
      name: map['name'] == null ? null : map['name'] as String,
      serviceId: map['serviceId'] == null ? null : map['serviceId'] as String,
    );
  }
}

