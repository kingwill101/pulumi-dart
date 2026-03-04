// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LocationResponse {
  final pulumi.Input<String>? name;

  /// Whether the location is primary or failover
  final pulumi.Input<String>? role;

  /// Creates a new [LocationResponse].
  /// [name] Optional.
  /// [role] Whether the location is primary or failover
  LocationResponse({this.name, this.role});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'role': ?role};
  }

  factory LocationResponse.fromMap(Map<String, dynamic> map) {
    return LocationResponse(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      role: (() {
        final guardedValue = map['role'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
