// ignore_for_file: unused_element, unnecessary_cast


/// Configuration to bind a .NET Component to another .NET Component
class DotNetComponentServiceBind {
  /// Name of the service bind
  final String? name;
  /// Resource id of the target service
  final String? serviceId;

  /// Creates a new [DotNetComponentServiceBind].
  /// [name] Name of the service bind
  /// [serviceId] Resource id of the target service
  DotNetComponentServiceBind({
    this.name,
    this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'serviceId': ?serviceId,
    };
  }

  factory DotNetComponentServiceBind.fromMap(Map<String, dynamic> map) {
    return DotNetComponentServiceBind(
      name: map['name'] == null ? null : map['name'] as String,
      serviceId: map['serviceId'] == null ? null : map['serviceId'] as String,
    );
  }
}

