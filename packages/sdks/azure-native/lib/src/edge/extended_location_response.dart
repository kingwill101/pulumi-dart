// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The complex type of the extended location.
class ExtendedLocationResponse {
  /// The name of the extended location.
  final pulumi.Input<String> name;
  /// The type of the extended location.
  final pulumi.Input<String> type;

  /// Creates a new [ExtendedLocationResponse].
  /// [name] The name of the extended location.
  /// [type] The type of the extended location.
  const ExtendedLocationResponse({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory ExtendedLocationResponse.fromMap(Map<String, dynamic> map) {
    return ExtendedLocationResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
