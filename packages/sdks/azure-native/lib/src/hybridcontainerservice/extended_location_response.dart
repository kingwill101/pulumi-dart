// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Extended location pointing to the underlying infrastructure
class ExtendedLocationResponse {
  /// ARM Id of the extended location.
  final pulumi.Input<String>? name;

  /// The extended location type. Allowed value: 'CustomLocation'
  final pulumi.Input<String>? type;

  /// Creates a new [ExtendedLocationResponse].
  /// [name] ARM Id of the extended location.
  /// [type] The extended location type. Allowed value: 'CustomLocation'
  ExtendedLocationResponse({this.name, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'type': ?type};
  }

  factory ExtendedLocationResponse.fromMap(Map<String, dynamic> map) {
    return ExtendedLocationResponse(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
