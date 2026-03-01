// ignore_for_file: unused_element, unnecessary_cast


/// Export operation configuration information
class FhirServiceExportConfigurationResponse {
  /// The name of the default export storage account.
  final String? storageAccountName;

  /// Creates a new [FhirServiceExportConfigurationResponse].
  /// [storageAccountName] The name of the default export storage account.
  FhirServiceExportConfigurationResponse({
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountName': ?storageAccountName,
    };
  }

  factory FhirServiceExportConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return FhirServiceExportConfigurationResponse(
      storageAccountName: map['storageAccountName'] == null ? null : map['storageAccountName'] as String,
    );
  }
}

