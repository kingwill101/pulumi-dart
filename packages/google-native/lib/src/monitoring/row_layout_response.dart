// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'row_response.dart';

/// A simplified layout that divides the available space into rows and arranges a set of widgets horizontally in each row.
class RowLayoutResponse {
  /// The rows of content to display.
  final List<RowResponse> rows;

  /// Creates a new [RowLayoutResponse].
  /// [rows] The rows of content to display.
  RowLayoutResponse({
    required this.rows,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rows'] = pulumi.Input.encodeList<RowResponse, Map<String, dynamic>>(
        rows, (value) => value.toMap());
    return map;
  }

  factory RowLayoutResponse.fromMap(Map<String, dynamic> map) {
    return RowLayoutResponse(
      rows: pulumi.Input.decodeList<RowResponse>(
          map['rows'],
          (value) =>
              RowResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
