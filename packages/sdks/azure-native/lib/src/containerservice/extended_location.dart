// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The complex type of the extended location.
class ExtendedLocation {
  /// The name of the extended location.
  final pulumi.Input<String>? name;
  /// The type of the extended location.
  final pulumi.Input<String>? type;

  /// Creates a new [ExtendedLocation].
  /// [name] The name of the extended location.
  /// [type] The type of the extended location.
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
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

