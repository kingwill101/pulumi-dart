// ignore_for_file: unused_element, unnecessary_cast


/// Database connection string value to type pair.
class ConnStringValueTypePairResponse {
  /// Type of database.
  final String type;
  /// Value of pair.
  final String value;

  /// Creates a new [ConnStringValueTypePairResponse].
  /// [type] Type of database.
  /// [value] Value of pair.
  ConnStringValueTypePairResponse({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory ConnStringValueTypePairResponse.fromMap(Map<String, dynamic> map) {
    return ConnStringValueTypePairResponse(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

