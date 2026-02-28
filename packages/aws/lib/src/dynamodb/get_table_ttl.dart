// ignore_for_file: unused_element, unnecessary_cast


class GetTableTtl {
  final String attributeName;
  final bool enabled;

  /// Creates a new [GetTableTtl].
  /// [attributeName] Required.
  /// [enabled] Required.
  GetTableTtl({
    required this.attributeName,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeName': attributeName,
      'enabled': enabled,
    };
  }

  factory GetTableTtl.fromMap(Map<String, dynamic> map) {
    return GetTableTtl(
      attributeName: map['attributeName'] as String,
      enabled: map['enabled'] as bool,
    );
  }
}

