// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_response.dart';

/// Result data returned by listAzureDataTransferApprovedSchemas.
class ListAzureDataTransferApprovedSchemasResult {
  /// Schemas array.
  final List<SchemaResponse>? value;

  /// Creates a new [ListAzureDataTransferApprovedSchemasResult].
  /// [value] Schemas array.
  ListAzureDataTransferApprovedSchemasResult({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?(() {
        final guardedValue = value;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<SchemaResponse, Map<String, dynamic>>(
          guardedValue,
          (value) => value.toMap(),
        );
      })(),
    };
  }

  factory ListAzureDataTransferApprovedSchemasResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListAzureDataTransferApprovedSchemasResult(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<SchemaResponse>(
          guardedValue,
          (value) =>
              SchemaResponse.fromMap((value as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
