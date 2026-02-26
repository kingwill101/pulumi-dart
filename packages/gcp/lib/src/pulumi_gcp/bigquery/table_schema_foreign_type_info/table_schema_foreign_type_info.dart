// ignore_for_file: unused_element, unnecessary_cast

class TableSchemaForeignTypeInfo {
  /// Specifies the system which defines the foreign data
  /// type.
  final String typeSystem;

  TableSchemaForeignTypeInfo({
    required this.typeSystem,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['typeSystem'] = typeSystem;
    return map;
  }

  factory TableSchemaForeignTypeInfo.fromMap(Map<String, dynamic> map) {
    return TableSchemaForeignTypeInfo(
      typeSystem: map['typeSystem'] as String,
    );
  }
}
