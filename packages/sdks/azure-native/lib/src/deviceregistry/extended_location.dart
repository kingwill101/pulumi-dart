// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The extended location.
class ExtendedLocation {
  /// The extended location name.
  final pulumi.Input<String> name;
  /// The extended location type.
  final pulumi.Input<String> type;

  /// Creates a new [ExtendedLocation].
  /// [name] The extended location name.
  /// [type] The extended location type.
  ExtendedLocation({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory ExtendedLocation.fromMap(Map<String, dynamic> map) {
    return ExtendedLocation(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

