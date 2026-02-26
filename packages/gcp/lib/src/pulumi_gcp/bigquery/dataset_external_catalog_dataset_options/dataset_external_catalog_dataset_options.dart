// ignore_for_file: unused_element, unnecessary_cast

class DatasetExternalCatalogDatasetOptions {
  /// The storage location URI for all tables in the dataset. Equivalent to hive metastore's
  /// database locationUri. Maximum length of 1024 characters.
  final String? defaultStorageLocationUri;

  /// A map of key value pairs defining the parameters and properties of the open source schema.
  /// Maximum size of 2Mib.
  final Map<String, String>? parameters;

  DatasetExternalCatalogDatasetOptions({
    this.defaultStorageLocationUri,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultStorageLocationUriValue = defaultStorageLocationUri;
    if (defaultStorageLocationUriValue != null) {
      map['defaultStorageLocationUri'] = defaultStorageLocationUriValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    return map;
  }

  factory DatasetExternalCatalogDatasetOptions.fromMap(
      Map<String, dynamic> map) {
    return DatasetExternalCatalogDatasetOptions(
      defaultStorageLocationUri: map['defaultStorageLocationUri'] == null
          ? null
          : map['defaultStorageLocationUri'] as String,
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}
