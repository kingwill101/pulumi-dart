// ignore_for_file: unused_element, unnecessary_cast


class GetTableSchemaForeignTypeInfo {
  /// Specifies the system which defines the foreign data type.
  final String typeSystem;

  /// Creates a new [GetTableSchemaForeignTypeInfo].
  /// [typeSystem] Specifies the system which defines the foreign data type.
  GetTableSchemaForeignTypeInfo({
    required this.typeSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'typeSystem': typeSystem,
    };
  }

  factory GetTableSchemaForeignTypeInfo.fromMap(Map<String, dynamic> map) {
    return GetTableSchemaForeignTypeInfo(
      typeSystem: map['typeSystem'] as String,
    );
  }
}

