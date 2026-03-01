// ignore_for_file: unused_element, unnecessary_cast


/// Properties for ConfigurationReference Resource
class ConfigurationReferenceProperties {
  /// ArmId of Configuration resource
  final String? configurationResourceId;

  /// Creates a new [ConfigurationReferenceProperties].
  /// [configurationResourceId] ArmId of Configuration resource
  ConfigurationReferenceProperties({
    this.configurationResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationResourceId': ?configurationResourceId,
    };
  }

  factory ConfigurationReferenceProperties.fromMap(Map<String, dynamic> map) {
    return ConfigurationReferenceProperties(
      configurationResourceId: map['configurationResourceId'] == null ? null : map['configurationResourceId'] as String,
    );
  }
}

