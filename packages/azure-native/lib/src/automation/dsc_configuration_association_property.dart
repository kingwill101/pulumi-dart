// ignore_for_file: unused_element, unnecessary_cast


/// The Dsc configuration property associated with the entity.
class DscConfigurationAssociationProperty {
  /// Gets or sets the name of the Dsc configuration.
  final String? name;

  /// Creates a new [DscConfigurationAssociationProperty].
  /// [name] Gets or sets the name of the Dsc configuration.
  DscConfigurationAssociationProperty({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DscConfigurationAssociationProperty.fromMap(Map<String, dynamic> map) {
    return DscConfigurationAssociationProperty(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

