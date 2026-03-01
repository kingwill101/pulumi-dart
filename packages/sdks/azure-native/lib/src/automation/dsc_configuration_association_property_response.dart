// ignore_for_file: unused_element, unnecessary_cast


/// The Dsc configuration property associated with the entity.
class DscConfigurationAssociationPropertyResponse {
  /// Gets or sets the name of the Dsc configuration.
  final String? name;

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
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

