// ignore_for_file: unused_element, unnecessary_cast

class BuilderConfig2 {
  final String? id;

  BuilderConfig2({
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

  factory BuilderConfig2.fromMap(Map<String, dynamic> map) {
    return BuilderConfig2(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}
