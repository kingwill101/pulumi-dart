// ignore_for_file: unused_element, unnecessary_cast


class DataLakeAnalyticsSchemaResponseProperties {
  /// DataLake Store Account Name
  final String? dataLakeStoreAccountName;

  /// Creates a new [DataLakeAnalyticsSchemaResponseProperties].
  /// [dataLakeStoreAccountName] DataLake Store Account Name
  DataLakeAnalyticsSchemaResponseProperties({
    this.dataLakeStoreAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLakeStoreAccountName': ?dataLakeStoreAccountName,
    };
  }

  factory DataLakeAnalyticsSchemaResponseProperties.fromMap(Map<String, dynamic> map) {
    return DataLakeAnalyticsSchemaResponseProperties(
      dataLakeStoreAccountName: map['dataLakeStoreAccountName'] == null ? null : map['dataLakeStoreAccountName'] as String,
    );
  }
}

