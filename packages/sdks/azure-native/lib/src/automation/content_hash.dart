// ignore_for_file: unused_element, unnecessary_cast


/// Definition of the runbook property type.
class ContentHash {
  /// Gets or sets the content hash algorithm used to hash the content.
  final String algorithm;
  /// Gets or sets expected hash value of the content.
  final String value;

  /// Creates a new [ContentHash].
  /// [algorithm] Gets or sets the content hash algorithm used to hash the content.
  /// [value] Gets or sets expected hash value of the content.
  ContentHash({
    required this.algorithm,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'value': value,
    };
  }

  factory ContentHash.fromMap(Map<String, dynamic> map) {
    return ContentHash(
      algorithm: map['algorithm'] as String,
      value: map['value'] as String,
    );
  }
}

