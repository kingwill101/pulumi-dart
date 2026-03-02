// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'column_definition_response.dart';

/// Declaration of a custom stream.
class StreamDeclarationResponse {
  /// List of columns used by data in this stream.
  final pulumi.Input<List<ColumnDefinitionResponse>>? columns;

  /// Creates a new [StreamDeclarationResponse].
  /// [columns] List of columns used by data in this stream.
  StreamDeclarationResponse({
    this.columns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?pulumi.Input.mapOptionalInputValue<List<ColumnDefinitionResponse>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<ColumnDefinitionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamDeclarationResponse.fromMap(Map<String, dynamic> map) {
    return StreamDeclarationResponse(
      columns: map['columns'] == null ? null : (pulumi.Input.decodeList<ColumnDefinitionResponse>(map['columns']!, (value) => ColumnDefinitionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

