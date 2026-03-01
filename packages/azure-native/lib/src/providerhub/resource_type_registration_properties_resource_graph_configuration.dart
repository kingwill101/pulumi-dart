// ignore_for_file: unused_element, unnecessary_cast


/// The resource graph configuration.
class ResourceTypeRegistrationPropertiesResourceGraphConfiguration {
  /// The api version.
  final String? apiVersion;
  /// Whether it's enabled.
  final bool? enabled;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceGraphConfiguration].
  /// [apiVersion] The api version.
  /// [enabled] Whether it's enabled.
  ResourceTypeRegistrationPropertiesResourceGraphConfiguration({
    this.apiVersion,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'enabled': ?enabled,
    };
  }

  factory ResourceTypeRegistrationPropertiesResourceGraphConfiguration.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesResourceGraphConfiguration(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

