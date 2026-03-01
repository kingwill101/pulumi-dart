// ignore_for_file: unused_element, unnecessary_cast


/// Spark configuration reference.
class SparkConfigurationParametrizationReference {
  /// Reference spark configuration name. Type: string (or Expression with resultType string).
  final dynamic referenceName;
  /// Spark configuration reference type.
  final String type;

  /// Creates a new [SparkConfigurationParametrizationReference].
  /// [referenceName] Reference spark configuration name. Type: string (or Expression with resultType string).
  /// [type] Spark configuration reference type.
  SparkConfigurationParametrizationReference({
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory SparkConfigurationParametrizationReference.fromMap(Map<String, dynamic> map) {
    return SparkConfigurationParametrizationReference(
      referenceName: map['referenceName'],
      type: map['type'] as String,
    );
  }
}

