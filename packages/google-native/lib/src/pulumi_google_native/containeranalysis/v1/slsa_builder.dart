// ignore_for_file: unused_element, unnecessary_cast

class SlsaBuilder {
  final String? id;

  SlsaBuilder({
    this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    return map;
  }

  factory SlsaBuilder.fromMap(Map<String, dynamic> map) {
    return SlsaBuilder(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}
