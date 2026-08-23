// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataflowGraph connection node output schema settings.
class DataflowGraphConnectionSchemaSettingsResponse {
  /// Reference to the schema that describes the output of the transformation.
  final pulumi.Input<String>? schemaRef;
  /// Output serialization format.
  final pulumi.Input<String>? serializationFormat;

  /// Creates a new [DataflowGraphConnectionSchemaSettingsResponse].
  /// [schemaRef] Reference to the schema that describes the output of the transformation.
  /// [serializationFormat] Output serialization format.
  const DataflowGraphConnectionSchemaSettingsResponse({
    this.schemaRef,
    this.serializationFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaRef': ?schemaRef,
      'serializationFormat': ?serializationFormat,
    };
  }

  factory DataflowGraphConnectionSchemaSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DataflowGraphConnectionSchemaSettingsResponse(
      schemaRef: (() { final guardedValue = map['schemaRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serializationFormat: (() { final guardedValue = map['serializationFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
