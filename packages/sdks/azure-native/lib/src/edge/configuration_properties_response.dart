// ignore_for_file: unused_element, unnecessary_cast


/// Configuration Properties
class ConfigurationPropertiesResponse {
  /// Provisioning state of resource
  final String provisioningState;

  /// Creates a new [ConfigurationPropertiesResponse].
  /// [provisioningState] Provisioning state of resource
  ConfigurationPropertiesResponse({
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
    };
  }

  factory ConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationPropertiesResponse(
      provisioningState: map['provisioningState'] as String,
    );
  }
}

