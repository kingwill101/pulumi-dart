// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Component Status
class ComponentStatusResponse {
  /// Component name
  final pulumi.Input<String>? name;
  /// Component status
  final pulumi.Input<String>? status;

  /// Creates a new [ComponentStatusResponse].
  /// [name] Component name
  /// [status] Component status
  ComponentStatusResponse({
    this.name,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'status': ?status,
    };
  }

  factory ComponentStatusResponse.fromMap(Map<String, dynamic> map) {
    return ComponentStatusResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

