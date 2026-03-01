// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'column_response.dart';

/// A simplified layout that divides the available space into vertical columns and arranges a set of widgets vertically in each column.
class ColumnLayoutResponse {
  /// The columns of content to display.
  final List<ColumnResponse> columns;

  /// Creates a new [ColumnLayoutResponse].
  /// [columns] The columns of content to display.
  ColumnLayoutResponse({required this.columns});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': pulumi.Input.encodeList<ColumnResponse, Map<String, dynamic>>(
        columns,
        (value) => value.toMap(),
      ),
    };
  }

  factory ColumnLayoutResponse.fromMap(Map<String, dynamic> map) {
    return ColumnLayoutResponse(
      columns: pulumi.Input.decodeList<ColumnResponse>(
        map['columns'],
        (value) =>
            ColumnResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
