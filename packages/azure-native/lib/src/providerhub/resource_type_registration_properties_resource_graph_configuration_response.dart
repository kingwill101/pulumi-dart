// ignore_for_file: unused_element, unnecessary_cast


/// The resource graph configuration.
class ResourceTypeRegistrationPropertiesResourceGraphConfigurationResponse {
  /// The api version.
  final String? apiVersion;
  /// Whether it's enabled.
  final bool? enabled;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceGraphConfigurationResponse].
  /// [apiVersion] The api version.
  /// [enabled] Whether it's enabled.
  ResourceTypeRegistrationPropertiesResourceGraphConfigurationResponse({
    this.apiVersion,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'enabled': ?enabled,
    };
  }

  factory ResourceTypeRegistrationPropertiesResourceGraphConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesResourceGraphConfigurationResponse(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

