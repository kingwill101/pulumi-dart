// ignore_for_file: unused_element, unnecessary_cast

class FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatterns {
  final List<String>? items;

  /// Creates a new [FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatterns].
  /// [items] Optional.
  FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatterns({this.items});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'items': ?items};
  }

  factory FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatterns.fromMap(
    Map<String, dynamic> map,
  ) {
    return FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatterns(
      items: map['items'] == null
          ? null
          : (map['items'] as List).cast<String>(),
    );
  }
}
