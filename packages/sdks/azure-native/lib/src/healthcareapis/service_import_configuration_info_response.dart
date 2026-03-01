// ignore_for_file: unused_element, unnecessary_cast


/// Import operation configuration information
class ServiceImportConfigurationInfoResponse {
  /// If the import operation is enabled.
  final bool? enabled;
  /// If the FHIR service is in InitialImportMode.
  final bool? initialImportMode;
  /// The name of the default integration storage account.
  final String? integrationDataStore;

  /// Creates a new [ServiceImportConfigurationInfoResponse].
  /// [enabled] If the import operation is enabled.
  /// [initialImportMode] If the FHIR service is in InitialImportMode.
  /// [integrationDataStore] The name of the default integration storage account.
  ServiceImportConfigurationInfoResponse({
    this.enabled,
    this.initialImportMode,
    this.integrationDataStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'initialImportMode': ?initialImportMode,
      'integrationDataStore': ?integrationDataStore,
    };
  }

  factory ServiceImportConfigurationInfoResponse.fromMap(Map<String, dynamic> map) {
    return ServiceImportConfigurationInfoResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      initialImportMode: map['initialImportMode'] == null ? null : map['initialImportMode'] as bool,
      integrationDataStore: map['integrationDataStore'] == null ? null : map['integrationDataStore'] as String,
    );
  }
}

