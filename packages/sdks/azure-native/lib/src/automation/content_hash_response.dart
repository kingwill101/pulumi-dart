// ignore_for_file: unused_element, unnecessary_cast


/// Definition of the runbook property type.
class ContentHashResponse {
  /// Gets or sets the content hash algorithm used to hash the content.
  final String algorithm;
  /// Gets or sets expected hash value of the content.
  final String value;

  /// Creates a new [ContentHashResponse].
  /// [algorithm] Gets or sets the content hash algorithm used to hash the content.
  /// [value] Gets or sets expected hash value of the content.
  ContentHashResponse({
    required this.algorithm,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'value': value,
    };
  }

  factory ContentHashResponse.fromMap(Map<String, dynamic> map) {
    return ContentHashResponse(
      algorithm: map['algorithm'] as String,
      value: map['value'] as String,
    );
  }
}

