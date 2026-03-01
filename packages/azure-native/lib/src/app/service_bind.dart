// ignore_for_file: unused_element, unnecessary_cast


/// Configuration to bind a ContainerApp to a dev ContainerApp Service
class ServiceBind {
  /// Type of the client to be used to connect to the service
  final String? clientType;
  /// Customized keys for customizing injected values to the app
  final Map<String, String>? customizedKeys;
  /// Name of the service bind
  final String? name;
  /// Resource id of the target service
  final String? serviceId;

  /// Creates a new [ServiceBind].
  /// [clientType] Type of the client to be used to connect to the service
  /// [customizedKeys] Customized keys for customizing injected values to the app
  /// [name] Name of the service bind
  /// [serviceId] Resource id of the target service
  ServiceBind({
    this.clientType,
    this.customizedKeys,
    this.name,
    this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientType': ?clientType,
      'customizedKeys': ?customizedKeys,
      'name': ?name,
      'serviceId': ?serviceId,
    };
  }

  factory ServiceBind.fromMap(Map<String, dynamic> map) {
    return ServiceBind(
      clientType: map['clientType'] == null ? null : map['clientType'] as String,
      customizedKeys: map['customizedKeys'] == null ? null : (map['customizedKeys'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      serviceId: map['serviceId'] == null ? null : map['serviceId'] as String,
    );
  }
}

