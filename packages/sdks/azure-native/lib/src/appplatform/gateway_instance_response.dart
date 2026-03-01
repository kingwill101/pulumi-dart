// ignore_for_file: unused_element, unnecessary_cast


/// Collection of instances belong to the Spring Cloud Gateway
class GatewayInstanceResponse {
  /// Name of the Spring Cloud Gateway instance
  final String name;
  /// Status of the Spring Cloud Gateway instance
  final String status;

  /// Creates a new [GatewayInstanceResponse].
  /// [name] Name of the Spring Cloud Gateway instance
  /// [status] Status of the Spring Cloud Gateway instance
  GatewayInstanceResponse({
    required this.name,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'status': status,
    };
  }

  factory GatewayInstanceResponse.fromMap(Map<String, dynamic> map) {
    return GatewayInstanceResponse(
      name: map['name'] as String,
      status: map['status'] as String,
    );
  }
}

