// ignore_for_file: unused_element, unnecessary_cast

class TableColumnFamily {
  /// The name of the column family.
  final String family;

  /// The type of the column family.
  final String? type;

  /// Creates a new [TableColumnFamily].
  /// [family] The name of the column family.
  /// [type] The type of the column family.
  TableColumnFamily({
    required this.family,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['family'] = family;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory TableColumnFamily.fromMap(Map<String, dynamic> map) {
    return TableColumnFamily(
      family: map['family'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
