// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'row.dart';

/// A simplified layout that divides the available space into rows and arranges a set of widgets horizontally in each row.
class RowLayout {
  /// The rows of content to display.
  final List<Row>? rows;

  /// Creates a new [RowLayout].
  /// [rows] The rows of content to display.
  RowLayout({this.rows});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rows': ?rows == null
          ? null
          : pulumi.Input.encodeList<Row, Map<String, dynamic>>(
              rows!,
              (value) => value.toMap(),
            ),
    };
  }

  factory RowLayout.fromMap(Map<String, dynamic> map) {
    return RowLayout(
      rows: map['rows'] == null
          ? null
          : pulumi.Input.decodeList<Row>(
              map['rows'],
              (value) => Row.fromMap((value as Map).cast<String, dynamic>()),
            ),
    );
  }
}
