// ignore_for_file: unused_element, unnecessary_cast

class GetKeyRingsKeyRing {
  final String id;
  final String name;

  GetKeyRingsKeyRing({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }

  factory GetKeyRingsKeyRing.fromMap(Map<String, dynamic> map) {
    return GetKeyRingsKeyRing(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}
