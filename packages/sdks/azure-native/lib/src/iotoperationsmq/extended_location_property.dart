// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ExtendedLocation properties
class ExtendedLocationProperty {
  /// The name of the extended location.
  final pulumi.Input<String> name;
  /// Type of ExtendedLocation.
  final pulumi.Input<dynamic> type;

  /// Creates a new [ExtendedLocationProperty].
  /// [name] The name of the extended location.
  /// [type] Type of ExtendedLocation.
  const ExtendedLocationProperty({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory ExtendedLocationProperty.fromMap(Map<String, dynamic> map) {
    return ExtendedLocationProperty(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type']),
    );
  }
}
