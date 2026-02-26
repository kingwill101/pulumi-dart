// ignore_for_file: unused_element, unnecessary_cast

class GetCatalogTableStorageDescriptorSerDeInfo {
  /// Name of the table.
  final String name;

  /// Map of initialization parameters for the SerDe, in key-value form.
  final Map<String, String> parameters;

  /// Usually the class that implements the SerDe. An example is `org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe`.
  final String serializationLibrary;

  GetCatalogTableStorageDescriptorSerDeInfo({
    required this.name,
    required this.parameters,
    required this.serializationLibrary,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['parameters'] = parameters;
    map['serializationLibrary'] = serializationLibrary;
    return map;
  }

  factory GetCatalogTableStorageDescriptorSerDeInfo.fromMap(
      Map<String, dynamic> map) {
    return GetCatalogTableStorageDescriptorSerDeInfo(
      name: map['name'] as String,
      parameters: (map['parameters'] as Map).cast<String, String>(),
      serializationLibrary: map['serializationLibrary'] as String,
    );
  }
}
