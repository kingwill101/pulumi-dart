// ignore_for_file: unused_element, unnecessary_cast

class ReferenceListEntry {
  /// Required. The value of the entry. Maximum length is 512 characters.
  final String value;

  ReferenceListEntry({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory ReferenceListEntry.fromMap(Map<String, dynamic> map) {
    return ReferenceListEntry(
      value: map['value'] as String,
    );
  }
}
