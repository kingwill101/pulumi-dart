// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Extended location pointing to the underlying infrastructure
class ExtendedLocation {
  /// ARM Id of the extended location.
  final pulumi.Input<String>? name;
  /// The extended location type. Allowed value: 'CustomLocation'
  final pulumi.Input<String>? type;

  /// Creates a new [ExtendedLocation].
  /// [name] ARM Id of the extended location.
  /// [type] The extended location type. Allowed value: 'CustomLocation'
  ExtendedLocation({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory ExtendedLocation.fromMap(Map<String, dynamic> map) {
    return ExtendedLocation(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

