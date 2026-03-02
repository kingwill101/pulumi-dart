// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Collection of instances belong to the Service Registry
class ServiceRegistryInstanceResponse {
  /// Name of the Service Registry instance
  final pulumi.Input<String> name;
  /// Status of the Service Registry instance
  final pulumi.Input<String> status;

  /// Creates a new [ServiceRegistryInstanceResponse].
  /// [name] Name of the Service Registry instance
  /// [status] Status of the Service Registry instance
  ServiceRegistryInstanceResponse({
    required this.name,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'status': status,
    };
  }

  factory ServiceRegistryInstanceResponse.fromMap(Map<String, dynamic> map) {
    return ServiceRegistryInstanceResponse(
      name: (map['name'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

