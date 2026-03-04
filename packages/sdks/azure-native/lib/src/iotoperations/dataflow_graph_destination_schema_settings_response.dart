// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataflowGraph destination node output schema settings.
class DataflowGraphDestinationSchemaSettingsResponse {
  /// Reference to the schema that describes the output of the transformation.
  final pulumi.Input<String>? schemaRef;

  /// The format of the output data.
  final pulumi.Input<String> serializationFormat;

  /// Creates a new [DataflowGraphDestinationSchemaSettingsResponse].
  /// [schemaRef] Reference to the schema that describes the output of the transformation.
  /// [serializationFormat] The format of the output data.
  DataflowGraphDestinationSchemaSettingsResponse({
    this.schemaRef,
    required this.serializationFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaRef': ?schemaRef,
      'serializationFormat': serializationFormat,
    };
  }

  factory DataflowGraphDestinationSchemaSettingsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataflowGraphDestinationSchemaSettingsResponse(
      schemaRef: (() {
        final guardedValue = map['schemaRef'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serializationFormat: pulumi.Input.fromValue(
        map['serializationFormat'] as String,
      ),
    );
  }
}
