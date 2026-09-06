// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataflowGraph connection node output schema settings.
class DataflowGraphConnectionSchemaSettings {
  /// Reference to the schema that describes the output of the transformation.
  final pulumi.Input<String?>? schemaRef;
  /// Output serialization format.
  final pulumi.Input<dynamic>? serializationFormat;

  /// Creates a new [DataflowGraphConnectionSchemaSettings].
  /// [schemaRef] Reference to the schema that describes the output of the transformation.
  /// [serializationFormat] Output serialization format.
  const DataflowGraphConnectionSchemaSettings({
    this.schemaRef,
    this.serializationFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaRef': ?schemaRef,
      'serializationFormat': ?serializationFormat,
    };
  }

  factory DataflowGraphConnectionSchemaSettings.fromMap(Map<String, dynamic> map) {
    return DataflowGraphConnectionSchemaSettings(
      schemaRef: (() { final guardedValue = map['schemaRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serializationFormat: (() { final guardedValue = map['serializationFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
