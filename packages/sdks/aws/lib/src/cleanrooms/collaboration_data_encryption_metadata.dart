// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CollaborationDataEncryptionMetadata {
  /// Whether encrypted tables can contain cleartext data. This is a boolean field.
  final pulumi.Input<bool> allowClearText;
  /// Whether Fingerprint columns can contain duplicate entries. This is a boolean field.
  final pulumi.Input<bool> allowDuplicates;
  /// Whether Fingerprint columns can be joined on any other Fingerprint column with a different name. This is a boolean field.
  final pulumi.Input<bool> allowJoinsOnColumnsWithDifferentNames;
  /// Whether NULL values are to be copied as NULL to encrypted tables (true) or cryptographically processed (false).
  final pulumi.Input<bool> preserveNulls;

  /// Creates a new [CollaborationDataEncryptionMetadata].
  /// [allowClearText] Whether encrypted tables can contain cleartext data. This is a boolean field.
  /// [allowDuplicates] Whether Fingerprint columns can contain duplicate entries. This is a boolean field.
  /// [allowJoinsOnColumnsWithDifferentNames] Whether Fingerprint columns can be joined on any other Fingerprint column with a different name. This is a boolean field.
  /// [preserveNulls] Whether NULL values are to be copied as NULL to encrypted tables (true) or cryptographically processed (false).
  const CollaborationDataEncryptionMetadata({
    required this.allowClearText,
    required this.allowDuplicates,
    required this.allowJoinsOnColumnsWithDifferentNames,
    required this.preserveNulls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowClearText': allowClearText,
      'allowDuplicates': allowDuplicates,
      'allowJoinsOnColumnsWithDifferentNames': allowJoinsOnColumnsWithDifferentNames,
      'preserveNulls': preserveNulls,
    };
  }

  factory CollaborationDataEncryptionMetadata.fromMap(Map<String, dynamic> map) {
    return CollaborationDataEncryptionMetadata(
      allowClearText: pulumi.Input.fromValue(map['allowClearText'] as bool),
      allowDuplicates: pulumi.Input.fromValue(map['allowDuplicates'] as bool),
      allowJoinsOnColumnsWithDifferentNames: pulumi.Input.fromValue(map['allowJoinsOnColumnsWithDifferentNames'] as bool),
      preserveNulls: pulumi.Input.fromValue(map['preserveNulls'] as bool),
    );
  }
}

