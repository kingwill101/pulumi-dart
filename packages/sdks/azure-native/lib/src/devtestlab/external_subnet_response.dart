// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Subnet information as returned by the Microsoft.Network API.
class ExternalSubnetResponse {
  /// Gets or sets the identifier.
  final pulumi.Input<String>? id;
  /// Gets or sets the name.
  final pulumi.Input<String>? name;

  /// Creates a new [ExternalSubnetResponse].
  /// [id] Gets or sets the identifier.
  /// [name] Gets or sets the name.
  const ExternalSubnetResponse({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory ExternalSubnetResponse.fromMap(Map<String, dynamic> map) {
    return ExternalSubnetResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

