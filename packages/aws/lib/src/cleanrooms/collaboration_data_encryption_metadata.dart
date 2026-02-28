// ignore_for_file: unused_element, unnecessary_cast

class CollaborationDataEncryptionMetadata {
  /// Whether encrypted tables can contain cleartext data. This is a boolean field.
  final bool allowClearText;

  /// Whether Fingerprint columns can contain duplicate entries. This is a boolean field.
  final bool allowDuplicates;

  /// Whether Fingerprint columns can be joined on any other Fingerprint column with a different name. This is a boolean field.
  final bool allowJoinsOnColumnsWithDifferentNames;

  /// Whether NULL values are to be copied as NULL to encrypted tables (true) or cryptographically processed (false).
  final bool preserveNulls;

  /// Creates a new [CollaborationDataEncryptionMetadata].
  /// [allowClearText] Whether encrypted tables can contain cleartext data. This is a boolean field.
  /// [allowDuplicates] Whether Fingerprint columns can contain duplicate entries. This is a boolean field.
  /// [allowJoinsOnColumnsWithDifferentNames] Whether Fingerprint columns can be joined on any other Fingerprint column with a different name. This is a boolean field.
  /// [preserveNulls] Whether NULL values are to be copied as NULL to encrypted tables (true) or cryptographically processed (false).
  CollaborationDataEncryptionMetadata({
    required this.allowClearText,
    required this.allowDuplicates,
    required this.allowJoinsOnColumnsWithDifferentNames,
    required this.preserveNulls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowClearText'] = allowClearText;
    map['allowDuplicates'] = allowDuplicates;
    map['allowJoinsOnColumnsWithDifferentNames'] =
        allowJoinsOnColumnsWithDifferentNames;
    map['preserveNulls'] = preserveNulls;
    return map;
  }

  factory CollaborationDataEncryptionMetadata.fromMap(
      Map<String, dynamic> map) {
    return CollaborationDataEncryptionMetadata(
      allowClearText: map['allowClearText'] as bool,
      allowDuplicates: map['allowDuplicates'] as bool,
      allowJoinsOnColumnsWithDifferentNames:
          map['allowJoinsOnColumnsWithDifferentNames'] as bool,
      preserveNulls: map['preserveNulls'] as bool,
    );
  }
}
