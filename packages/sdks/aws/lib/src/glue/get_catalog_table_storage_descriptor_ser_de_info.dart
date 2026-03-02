// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCatalogTableStorageDescriptorSerDeInfo {
  /// Name of the table.
  final pulumi.Input<String> name;
  /// Map of initialization parameters for the SerDe, in key-value form.
  final pulumi.Input<Map<String, String>> parameters;
  /// Usually the class that implements the SerDe. An example is `org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe`.
  final pulumi.Input<String> serializationLibrary;

  /// Creates a new [GetCatalogTableStorageDescriptorSerDeInfo].
  /// [name] Name of the table.
  /// [parameters] Map of initialization parameters for the SerDe, in key-value form.
  /// [serializationLibrary] Usually the class that implements the SerDe. An example is `org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe`.
  GetCatalogTableStorageDescriptorSerDeInfo({
    required this.name,
    required this.parameters,
    required this.serializationLibrary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters,
      'serializationLibrary': serializationLibrary,
    };
  }

  factory GetCatalogTableStorageDescriptorSerDeInfo.fromMap(Map<String, dynamic> map) {
    return GetCatalogTableStorageDescriptorSerDeInfo(
      name: (map['name'] as String).input(),
      parameters: ((map['parameters'] as Map).cast<String, String>()).input(),
      serializationLibrary: (map['serializationLibrary'] as String).input(),
    );
  }
}

