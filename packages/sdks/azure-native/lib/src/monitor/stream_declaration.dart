// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'column_definition.dart';

/// Declaration of a custom stream.
class StreamDeclaration {
  /// List of columns used by data in this stream.
  final pulumi.Input<List<ColumnDefinition>>? columns;

  /// Creates a new [StreamDeclaration].
  /// [columns] List of columns used by data in this stream.
  StreamDeclaration({
    this.columns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?pulumi.Input.mapOptionalInputValue<List<ColumnDefinition>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<ColumnDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamDeclaration.fromMap(Map<String, dynamic> map) {
    return StreamDeclaration(
      columns: map['columns'] == null ? null : (pulumi.Input.decodeList<ColumnDefinition>(map['columns'], (value) => ColumnDefinition.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

