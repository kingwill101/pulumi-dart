// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogTableStorageDescriptorSerDeInfo {
  /// Name of the SerDe.
  final pulumi.Input<String>? name;

  /// Map of initialization parameters for the SerDe, in key-value form.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Usually the class that implements the SerDe. An example is `org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe`.
  final pulumi.Input<String>? serializationLibrary;

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

  factory CatalogTableStorageDescriptorSerDeInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return CatalogTableStorageDescriptorSerDeInfo(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      serializationLibrary: (() {
        final guardedValue = map['serializationLibrary'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
