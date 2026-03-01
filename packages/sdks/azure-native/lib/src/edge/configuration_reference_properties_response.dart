// ignore_for_file: unused_element, unnecessary_cast


/// Properties for ConfigurationReference Resource
class ConfigurationReferencePropertiesResponse {
  /// ArmId of Configuration resource
  final String? configurationResourceId;
  /// The status of the last operation.
  final String provisioningState;

  /// Creates a new [ConfigurationReferencePropertiesResponse].
  /// [configurationResourceId] ArmId of Configuration resource
  /// [provisioningState] The status of the last operation.
  ConfigurationReferencePropertiesResponse({
    this.configurationResourceId,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationResourceId': ?configurationResourceId,
      'provisioningState': provisioningState,
    };
  }

  factory ConfigurationReferencePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationReferencePropertiesResponse(
      configurationResourceId: map['configurationResourceId'] == null ? null : map['configurationResourceId'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

