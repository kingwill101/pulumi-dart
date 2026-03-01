// ignore_for_file: unused_element, unnecessary_cast


/// Collection of instances belong to the Application Configuration Service
class ConfigurationServiceInstanceResponse {
  /// Name of the Application Configuration Service instance
  final String name;
  /// Status of the Application Configuration Service instance
  final String status;

  /// Creates a new [ConfigurationServiceInstanceResponse].
  /// [name] Name of the Application Configuration Service instance
  /// [status] Status of the Application Configuration Service instance
  ConfigurationServiceInstanceResponse({
    required this.name,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'status': status,
    };
  }

  factory ConfigurationServiceInstanceResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationServiceInstanceResponse(
      name: map['name'] as String,
      status: map['status'] as String,
    );
  }
}

