// ignore_for_file: unused_element, unnecessary_cast

class GetTableTtl {
  final String attributeName;
  final bool enabled;

  GetTableTtl({
    required this.attributeName,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attributeName'] = attributeName;
    map['enabled'] = enabled;
    return map;
  }

  factory GetTableTtl.fromMap(Map<String, dynamic> map) {
    return GetTableTtl(
      attributeName: map['attributeName'] as String,
      enabled: map['enabled'] as bool,
    );
  }
}
