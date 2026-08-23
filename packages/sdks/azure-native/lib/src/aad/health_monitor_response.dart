// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Health Monitor Description
class HealthMonitorResponse {
  /// Health Monitor Details
  final pulumi.Input<String> details;
  /// Health Monitor Id
  final pulumi.Input<String> id;
  /// Health Monitor Name
  final pulumi.Input<String> name;

  /// Creates a new [HealthMonitorResponse].
  /// [details] Health Monitor Details
  /// [id] Health Monitor Id
  /// [name] Health Monitor Name
  const HealthMonitorResponse({
    required this.details,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': details,
      'id': id,
      'name': name,
    };
  }

  factory HealthMonitorResponse.fromMap(Map<String, dynamic> map) {
    return HealthMonitorResponse(
      details: pulumi.Input.fromValue(map['details'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
