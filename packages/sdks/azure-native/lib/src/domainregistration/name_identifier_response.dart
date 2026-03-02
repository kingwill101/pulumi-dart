// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identifies an object.
class NameIdentifierResponse {
  /// Name of the object.
  final pulumi.Input<String>? name;

  /// Creates a new [NameIdentifierResponse].
  /// [name] Name of the object.
  NameIdentifierResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory NameIdentifierResponse.fromMap(Map<String, dynamic> map) {
    return NameIdentifierResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

