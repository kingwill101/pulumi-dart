// ignore_for_file: unused_element, unnecessary_cast

class EntryEntrySourceAncestor {
  /// The name of the ancestor resource.
  final String? name;

  /// The type of the ancestor resource.
  final String? type;

  EntryEntrySourceAncestor({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory EntryEntrySourceAncestor.fromMap(Map<String, dynamic> map) {
    return EntryEntrySourceAncestor(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
