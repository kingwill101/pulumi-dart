// ignore_for_file: unused_element, unnecessary_cast


class CatalogTableStorageDescriptorSerDeInfo {
  /// Name of the SerDe.
  final String? name;
  /// Map of initialization parameters for the SerDe, in key-value form.
  final Map<String, String>? parameters;
  /// Usually the class that implements the SerDe. An example is `org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe`.
  final String? serializationLibrary;

  /// Creates a new [CatalogTableStorageDescriptorSerDeInfo].
  /// [name] Name of the SerDe.
  /// [parameters] Map of initialization parameters for the SerDe, in key-value form.
  /// [serializationLibrary] Usually the class that implements the SerDe. An example is `org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe`.
  CatalogTableStorageDescriptorSerDeInfo({
    this.name,
    this.parameters,
    this.serializationLibrary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'parameters': ?parameters,
      'serializationLibrary': ?serializationLibrary,
    };
  }

  factory CatalogTableStorageDescriptorSerDeInfo.fromMap(Map<String, dynamic> map) {
    return CatalogTableStorageDescriptorSerDeInfo(
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      serializationLibrary: map['serializationLibrary'] == null ? null : map['serializationLibrary'] as String,
    );
  }
}

