// ignore_for_file: unused_element, unnecessary_cast


class RunBookDraftContentLinkHash {
  /// Specifies the hash algorithm used to hash the content.
  final String algorithm;
  /// Specifies the expected hash value of the content.
  final String value;

  /// Creates a new [RunBookDraftContentLinkHash].
  /// [algorithm] Specifies the hash algorithm used to hash the content.
  /// [value] Specifies the expected hash value of the content.
  RunBookDraftContentLinkHash({
    required this.algorithm,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'value': value,
    };
  }

  factory RunBookDraftContentLinkHash.fromMap(Map<String, dynamic> map) {
    return RunBookDraftContentLinkHash(
      algorithm: map['algorithm'] as String,
      value: map['value'] as String,
    );
  }
}

