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
    return <String, dynamic>{
      'family': family,
      'type': ?type,
    };
  }

  factory TableColumnFamily.fromMap(Map<String, dynamic> map) {
    return TableColumnFamily(
      family: map['family'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

