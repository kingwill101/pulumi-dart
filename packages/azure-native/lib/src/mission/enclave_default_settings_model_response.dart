// ignore_for_file: unused_element, unnecessary_cast


/// Virtual Enclave Default Settings
class EnclaveDefaultSettingsModelResponse {
  /// Diagnostic Destination.
  final String? diagnosticDestination;
  /// Key Vault Resource Id.
  final String keyVaultResourceId;
  /// Log Analytics Resource Ids.
  final List<String> logAnalyticsResourceIdCollection;
  /// Storage Account Resource Id.
  final String storageAccountResourceId;

  /// Creates a new [EnclaveDefaultSettingsModelResponse].
  /// [diagnosticDestination] Diagnostic Destination.
  /// [keyVaultResourceId] Key Vault Resource Id.
  /// [logAnalyticsResourceIdCollection] Log Analytics Resource Ids.
  /// [storageAccountResourceId] Storage Account Resource Id.
  EnclaveDefaultSettingsModelResponse({
    this.diagnosticDestination,
    required this.keyVaultResourceId,
    required this.logAnalyticsResourceIdCollection,
    required this.storageAccountResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diagnosticDestination': ?diagnosticDestination,
      'keyVaultResourceId': keyVaultResourceId,
      'logAnalyticsResourceIdCollection': logAnalyticsResourceIdCollection,
      'storageAccountResourceId': storageAccountResourceId,
    };
  }

  factory EnclaveDefaultSettingsModelResponse.fromMap(Map<String, dynamic> map) {
    return EnclaveDefaultSettingsModelResponse(
      diagnosticDestination: map['diagnosticDestination'] == null ? null : map['diagnosticDestination'] as String,
      keyVaultResourceId: map['keyVaultResourceId'] as String,
      logAnalyticsResourceIdCollection: (map['logAnalyticsResourceIdCollection'] as List).cast<String>(),
      storageAccountResourceId: map['storageAccountResourceId'] as String,
    );
  }
}

