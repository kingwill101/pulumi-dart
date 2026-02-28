// ignore_for_file: unused_element, unnecessary_cast

/// Options to configure rule type ConvertROWIDToColumn. The rule is used to add column rowid to destination tables based on an Oracle rowid function/property. The rule filter field can refer to one or more entities. The rule scope can be one of: Table. This rule requires additional filter to be specified beyond the basic rule filter field, which is whether or not to work on tables which already have a primary key defined.
class ConvertRowIdToColumn {
  /// Only work on tables without primary key defined
  final bool onlyIfNoPrimaryKey;

  /// Creates a new [ConvertRowIdToColumn].
  /// [onlyIfNoPrimaryKey] Only work on tables without primary key defined
  ConvertRowIdToColumn({
    required this.onlyIfNoPrimaryKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['onlyIfNoPrimaryKey'] = onlyIfNoPrimaryKey;
    return map;
  }

  factory ConvertRowIdToColumn.fromMap(Map<String, dynamic> map) {
    return ConvertRowIdToColumn(
      onlyIfNoPrimaryKey: map['onlyIfNoPrimaryKey'] as bool,
    );
  }
}
