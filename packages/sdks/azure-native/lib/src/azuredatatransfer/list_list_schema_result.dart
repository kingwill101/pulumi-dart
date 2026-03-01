// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_response.dart';

/// Result data returned by listListSchema.
class ListListSchemaResult {
  /// Schemas array.
  final List<SchemaResponse>? value;

  /// Creates a new [ListListSchemaResult].
  /// [value] Schemas array.
  ListListSchemaResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value == null ? null : pulumi.Input.encodeList<SchemaResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListListSchemaResult.fromMap(Map<String, dynamic> map) {
    return ListListSchemaResult(
      value: map['value'] == null ? null : pulumi.Input.decodeList<SchemaResponse>(map['value'], (value) => SchemaResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

