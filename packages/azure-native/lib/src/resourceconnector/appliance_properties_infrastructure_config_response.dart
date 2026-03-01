// ignore_for_file: unused_element, unnecessary_cast


/// Contains infrastructure information about the Appliance
class AppliancePropertiesInfrastructureConfigResponse {
  /// Information about the connected appliance.
  final String? provider;

  /// Creates a new [AppliancePropertiesInfrastructureConfigResponse].
  /// [provider] Information about the connected appliance.
  AppliancePropertiesInfrastructureConfigResponse({
    this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provider': ?provider,
    };
  }

  factory AppliancePropertiesInfrastructureConfigResponse.fromMap(Map<String, dynamic> map) {
    return AppliancePropertiesInfrastructureConfigResponse(
      provider: map['provider'] == null ? null : map['provider'] as String,
    );
  }
}

