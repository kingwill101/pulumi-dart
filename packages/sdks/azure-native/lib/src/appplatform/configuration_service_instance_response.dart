// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Collection of instances belong to the Application Configuration Service
class ConfigurationServiceInstanceResponse {
  /// Name of the Application Configuration Service instance
  final pulumi.Input<String> name;
  /// Status of the Application Configuration Service instance
  final pulumi.Input<String> status;

  /// Creates a new [ConfigurationServiceInstanceResponse].
  /// [name] Name of the Application Configuration Service instance
  /// [status] Status of the Application Configuration Service instance
  const ConfigurationServiceInstanceResponse({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

