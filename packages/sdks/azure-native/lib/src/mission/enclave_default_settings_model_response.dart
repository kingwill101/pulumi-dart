// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual Enclave Default Settings
class EnclaveDefaultSettingsModelResponse {
  /// Diagnostic Destination.
  final pulumi.Input<String>? diagnosticDestination;
  /// Key Vault Resource Id.
  final pulumi.Input<String> keyVaultResourceId;
  /// Log Analytics Resource Ids.
  final pulumi.Input<List<String>> logAnalyticsResourceIdCollection;
  /// Storage Account Resource Id.
  final pulumi.Input<String> storageAccountResourceId;

  /// Creates a new [EnclaveDefaultSettingsModelResponse].
  /// [diagnosticDestination] Diagnostic Destination.
  /// [keyVaultResourceId] Key Vault Resource Id.
  /// [logAnalyticsResourceIdCollection] Log Analytics Resource Ids.
  /// [storageAccountResourceId] Storage Account Resource Id.
  const EnclaveDefaultSettingsModelResponse({
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
      diagnosticDestination: (() { final guardedValue = map['diagnosticDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultResourceId: pulumi.Input.fromValue(map['keyVaultResourceId'] as String),
      logAnalyticsResourceIdCollection: pulumi.Input.fromValue((map['logAnalyticsResourceIdCollection'] as List).cast<String>()),
      storageAccountResourceId: pulumi.Input.fromValue(map['storageAccountResourceId'] as String),
    );
  }
}
