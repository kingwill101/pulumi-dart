// ignore_for_file: unused_element, unnecessary_cast


/// The compression method used on a dataset.
class DatasetCompressionResponse {
  /// The dataset compression level. Type: string (or Expression with resultType string).
  final dynamic level;
  /// Type of dataset compression. Type: string (or Expression with resultType string).
  final dynamic type;

  /// Creates a new [DatasetCompressionResponse].
  /// [level] The dataset compression level. Type: string (or Expression with resultType string).
  /// [type] Type of dataset compression. Type: string (or Expression with resultType string).
  DatasetCompressionResponse({
    this.level,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': ?level,
      'type': type,
    };
  }

  factory DatasetCompressionResponse.fromMap(Map<String, dynamic> map) {
    return DatasetCompressionResponse(
      level: map['level'] == null ? null : map['level'],
      type: map['type'],
    );
  }
}

