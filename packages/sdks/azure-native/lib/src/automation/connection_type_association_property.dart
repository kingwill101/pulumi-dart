// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The connection type property associated with the entity.
class ConnectionTypeAssociationProperty {
  /// Gets or sets the name of the connection type.
  final pulumi.Input<String>? name;

  /// Creates a new [ConnectionTypeAssociationProperty].
  /// [name] Gets or sets the name of the connection type.
  const ConnectionTypeAssociationProperty({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ConnectionTypeAssociationProperty.fromMap(Map<String, dynamic> map) {
    return ConnectionTypeAssociationProperty(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

