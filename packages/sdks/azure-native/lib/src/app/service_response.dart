// ignore_for_file: unused_element, unnecessary_cast


/// Container App to be a dev service
class ServiceResponse {
  /// Dev ContainerApp service type
  final String type;

  /// Creates a new [ServiceResponse].
  /// [type] Dev ContainerApp service type
  ServiceResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ServiceResponse.fromMap(Map<String, dynamic> map) {
    return ServiceResponse(
      type: map['type'] as String,
    );
  }
}

