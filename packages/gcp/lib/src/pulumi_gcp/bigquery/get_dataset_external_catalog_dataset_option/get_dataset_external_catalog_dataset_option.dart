// ignore_for_file: unused_element, unnecessary_cast

class GetDatasetExternalCatalogDatasetOption {
  /// The storage location URI for all tables in the dataset. Equivalent to hive metastore's
  /// database locationUri. Maximum length of 1024 characters.
  final String defaultStorageLocationUri;

  /// A map of key value pairs defining the parameters and properties of the open source schema.
  /// Maximum size of 2Mib.
  final Map<String, String> parameters;

  GetDatasetExternalCatalogDatasetOption({
    required this.defaultStorageLocationUri,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultStorageLocationUri'] = defaultStorageLocationUri;
    map['parameters'] = parameters;
    return map;
  }

  factory GetDatasetExternalCatalogDatasetOption.fromMap(
      Map<String, dynamic> map) {
    return GetDatasetExternalCatalogDatasetOption(
      defaultStorageLocationUri: map['defaultStorageLocationUri'] as String,
      parameters: (map['parameters'] as Map).cast<String, String>(),
    );
  }
}
