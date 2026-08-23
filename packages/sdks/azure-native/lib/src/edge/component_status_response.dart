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
  const ComponentStatusResponse({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
