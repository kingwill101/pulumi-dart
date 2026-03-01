// ignore_for_file: unused_element, unnecessary_cast


/// Import source related properties.
class ImportSourceProperties {
  /// Relative path of data directory in storage.
  final String? dataDirPath;
  /// Sas token for accessing source storage. Read and list permissions are required for sas token.
  final String? sasToken;
  /// Storage type of import source.
  final String? storageType;
  /// Uri of the import source storage.
  final String? storageUrl;

  /// Creates a new [ImportSourceProperties].
  /// [dataDirPath] Relative path of data directory in storage.
  /// [sasToken] Sas token for accessing source storage. Read and list permissions are required for sas token.
  /// [storageType] Storage type of import source.
  /// [storageUrl] Uri of the import source storage.
  ImportSourceProperties({
    this.dataDirPath,
    this.sasToken,
    this.storageType,
    this.storageUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDirPath': ?dataDirPath,
      'sasToken': ?sasToken,
      'storageType': ?storageType,
      'storageUrl': ?storageUrl,
    };
  }

  factory ImportSourceProperties.fromMap(Map<String, dynamic> map) {
    return ImportSourceProperties(
      dataDirPath: map['dataDirPath'] == null ? null : map['dataDirPath'] as String,
      sasToken: map['sasToken'] == null ? null : map['sasToken'] as String,
      storageType: map['storageType'] == null ? null : map['storageType'] as String,
      storageUrl: map['storageUrl'] == null ? null : map['storageUrl'] as String,
    );
  }
}

