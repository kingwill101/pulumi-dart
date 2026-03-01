// ignore_for_file: unused_element, unnecessary_cast

/// Options to configure rule type ConvertROWIDToColumn. The rule is used to add column rowid to destination tables based on an Oracle rowid function/property. The rule filter field can refer to one or more entities. The rule scope can be one of: Table. This rule requires additional filter to be specified beyond the basic rule filter field, which is whether or not to work on tables which already have a primary key defined.
class ConvertRowIdToColumnResponse {
  /// Only work on tables without primary key defined
  final bool onlyIfNoPrimaryKey;

  /// Creates a new [ConvertRowIdToColumnResponse].
  /// [onlyIfNoPrimaryKey] Only work on tables without primary key defined
  ConvertRowIdToColumnResponse({required this.onlyIfNoPrimaryKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'onlyIfNoPrimaryKey': onlyIfNoPrimaryKey};
  }

  factory ConvertRowIdToColumnResponse.fromMap(Map<String, dynamic> map) {
    return ConvertRowIdToColumnResponse(
      onlyIfNoPrimaryKey: map['onlyIfNoPrimaryKey'] as bool,
    );
  }
}
