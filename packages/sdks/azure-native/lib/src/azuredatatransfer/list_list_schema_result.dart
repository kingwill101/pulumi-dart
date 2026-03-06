// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_response.dart';

/// Result data returned by listListSchema.
class ListListSchemaResult {
  /// Schemas array.
  final List<SchemaResponse>? value;

  /// Creates a new [ListListSchemaResult].
  /// [value] Schemas array.
  const ListListSchemaResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<SchemaResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListListSchemaResult.fromMap(Map<String, dynamic> map) {
    return ListListSchemaResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SchemaResponse>(guardedValue, (value) => SchemaResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

