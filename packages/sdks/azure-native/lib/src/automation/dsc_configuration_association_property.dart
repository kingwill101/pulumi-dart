// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Dsc configuration property associated with the entity.
class DscConfigurationAssociationProperty {
  /// Gets or sets the name of the Dsc configuration.
  final pulumi.Input<String?>? name;

  /// Creates a new [DscConfigurationAssociationProperty].
  /// [name] Gets or sets the name of the Dsc configuration.
  const DscConfigurationAssociationProperty({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DscConfigurationAssociationProperty.fromMap(Map<String, dynamic> map) {
    return DscConfigurationAssociationProperty(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
