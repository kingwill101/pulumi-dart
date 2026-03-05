// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Dsc configuration property associated with the entity.
class DscConfigurationAssociationPropertyResponse {
  /// Gets or sets the name of the Dsc configuration.
  final pulumi.Input<String>? name;

  /// Creates a new [DscConfigurationAssociationPropertyResponse].
  /// [name] Gets or sets the name of the Dsc configuration.
  DscConfigurationAssociationPropertyResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DscConfigurationAssociationPropertyResponse.fromMap(Map<String, dynamic> map) {
    return DscConfigurationAssociationPropertyResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

