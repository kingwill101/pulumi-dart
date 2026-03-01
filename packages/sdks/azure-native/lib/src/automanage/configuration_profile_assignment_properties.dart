// ignore_for_file: unused_element, unnecessary_cast


/// Automanage configuration profile assignment properties.
class ConfigurationProfileAssignmentProperties {
  /// The Automanage configurationProfile ARM Resource URI.
  final String? configurationProfile;

  /// Creates a new [ConfigurationProfileAssignmentProperties].
  /// [configurationProfile] The Automanage configurationProfile ARM Resource URI.
  ConfigurationProfileAssignmentProperties({
    this.configurationProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationProfile': ?configurationProfile,
    };
  }

  factory ConfigurationProfileAssignmentProperties.fromMap(Map<String, dynamic> map) {
    return ConfigurationProfileAssignmentProperties(
      configurationProfile: map['configurationProfile'] == null ? null : map['configurationProfile'] as String,
    );
  }
}

