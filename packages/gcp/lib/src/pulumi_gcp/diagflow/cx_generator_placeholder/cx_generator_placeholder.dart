// ignore_for_file: unused_element, unnecessary_cast

class CxGeneratorPlaceholder {
  /// Unique ID used to map custom placeholder to parameters in fulfillment.
  final String? id;

  /// Custom placeholder value in the prompt text.
  final String? name;

  CxGeneratorPlaceholder({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory CxGeneratorPlaceholder.fromMap(Map<String, dynamic> map) {
    return CxGeneratorPlaceholder(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
