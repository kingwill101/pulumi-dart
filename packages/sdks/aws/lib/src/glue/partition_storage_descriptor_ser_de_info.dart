// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PartitionStorageDescriptorSerDeInfo {
  /// Name of the SerDe.
  final pulumi.Input<String>? name;
  /// A map of initialization parameters for the SerDe, in key-value form.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Usually the class that implements the SerDe. An example is: org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe.
  final pulumi.Input<String>? serializationLibrary;

  /// Creates a new [PartitionStorageDescriptorSerDeInfo].
  /// [name] Name of the SerDe.
  /// [parameters] A map of initialization parameters for the SerDe, in key-value form.
  /// [serializationLibrary] Usually the class that implements the SerDe. An example is: org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe.
  PartitionStorageDescriptorSerDeInfo({
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

  factory PartitionStorageDescriptorSerDeInfo.fromMap(Map<String, dynamic> map) {
    return PartitionStorageDescriptorSerDeInfo(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
      serializationLibrary: map['serializationLibrary'] == null ? null : (map['serializationLibrary'] as String).input(),
    );
  }
}

