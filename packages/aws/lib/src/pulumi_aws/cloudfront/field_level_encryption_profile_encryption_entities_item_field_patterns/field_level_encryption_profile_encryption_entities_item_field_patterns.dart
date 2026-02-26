// ignore_for_file: unused_element, unnecessary_cast

class FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatterns {
  final List<String>? items;

  FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatterns({
    this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = itemsValue;
    }
    return map;
  }

  factory FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatterns.fromMap(
      Map<String, dynamic> map) {
    return FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatterns(
      items:
          map['items'] == null ? null : (map['items'] as List).cast<String>(),
    );
  }
}
