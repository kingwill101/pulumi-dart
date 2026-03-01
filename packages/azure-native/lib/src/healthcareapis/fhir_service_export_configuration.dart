// ignore_for_file: unused_element, unnecessary_cast


/// Export operation configuration information
class FhirServiceExportConfiguration {
  /// The name of the default export storage account.
  final String? storageAccountName;

  /// Creates a new [FhirServiceExportConfiguration].
  /// [storageAccountName] The name of the default export storage account.
  FhirServiceExportConfiguration({
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountName': ?storageAccountName,
    };
  }

  factory FhirServiceExportConfiguration.fromMap(Map<String, dynamic> map) {
    return FhirServiceExportConfiguration(
      storageAccountName: map['storageAccountName'] == null ? null : map['storageAccountName'] as String,
    );
  }
}

