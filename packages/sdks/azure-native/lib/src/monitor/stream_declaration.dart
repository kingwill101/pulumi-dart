// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'column_definition.dart';

/// Declaration of a custom stream.
class StreamDeclaration {
  /// List of columns used by data in this stream.
  final pulumi.Input<List<ColumnDefinition>?>? columns;

  /// Creates a new [StreamDeclaration].
  /// [columns] List of columns used by data in this stream.
  const StreamDeclaration({
    this.columns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?pulumi.Input.mapOptionalInputValue<List<ColumnDefinition>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<ColumnDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamDeclaration.fromMap(Map<String, dynamic> map) {
    return StreamDeclaration(
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ColumnDefinition>(guardedValue, (value) => ColumnDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
