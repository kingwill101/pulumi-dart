// ignore_for_file: unused_element, unnecessary_cast

class GetTableSchemaForeignTypeInfo {
  /// Specifies the system which defines the foreign data type.
  final String typeSystem;

  GetTableSchemaForeignTypeInfo({
    required this.typeSystem,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['typeSystem'] = typeSystem;
    return map;
  }

  factory GetTableSchemaForeignTypeInfo.fromMap(Map<String, dynamic> map) {
    return GetTableSchemaForeignTypeInfo(
      typeSystem: map['typeSystem'] as String,
    );
  }
}
