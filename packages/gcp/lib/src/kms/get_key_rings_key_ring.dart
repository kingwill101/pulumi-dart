// ignore_for_file: unused_element, unnecessary_cast

class GetKeyRingsKeyRing {
  final String id;
  final String name;

  /// Creates a new [GetKeyRingsKeyRing].
  /// [id] Required.
  /// [name] Required.
  GetKeyRingsKeyRing({required this.id, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'name': name};
  }

  factory GetKeyRingsKeyRing.fromMap(Map<String, dynamic> map) {
    return GetKeyRingsKeyRing(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}
