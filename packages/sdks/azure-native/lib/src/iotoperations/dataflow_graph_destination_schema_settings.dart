// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataflowGraph destination node output schema settings.
class DataflowGraphDestinationSchemaSettings {
  /// Reference to the schema that describes the output of the transformation.
  final pulumi.Input<String>? schemaRef;
  /// The format of the output data.
  final pulumi.Input<String> serializationFormat;

  /// Creates a new [DataflowGraphDestinationSchemaSettings].
  /// [schemaRef] Reference to the schema that describes the output of the transformation.
  /// [serializationFormat] The format of the output data.
  DataflowGraphDestinationSchemaSettings({
    this.schemaRef,
    required this.serializationFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaRef': ?schemaRef,
      'serializationFormat': serializationFormat,
    };
  }

  factory DataflowGraphDestinationSchemaSettings.fromMap(Map<String, dynamic> map) {
    return DataflowGraphDestinationSchemaSettings(
      schemaRef: map['schemaRef'] == null ? null : (map['schemaRef']! as String).input(),
      serializationFormat: (map['serializationFormat'] as String).input(),
    );
  }
}

