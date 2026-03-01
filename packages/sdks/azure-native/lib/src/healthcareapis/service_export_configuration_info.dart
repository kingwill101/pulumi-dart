// ignore_for_file: unused_element, unnecessary_cast


/// Export operation configuration information
class ServiceExportConfigurationInfo {
  /// The name of the default export storage account.
  final String? storageAccountName;

  /// Creates a new [ServiceExportConfigurationInfo].
  /// [storageAccountName] The name of the default export storage account.
  ServiceExportConfigurationInfo({
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountName': ?storageAccountName,
    };
  }

  factory ServiceExportConfigurationInfo.fromMap(Map<String, dynamic> map) {
    return ServiceExportConfigurationInfo(
      storageAccountName: map['storageAccountName'] == null ? null : map['storageAccountName'] as String,
    );
  }
}

