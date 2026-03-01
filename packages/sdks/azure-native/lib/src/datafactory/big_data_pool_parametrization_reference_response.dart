// ignore_for_file: unused_element, unnecessary_cast


/// Big data pool reference type.
class BigDataPoolParametrizationReferenceResponse {
  /// Reference big data pool name. Type: string (or Expression with resultType string).
  final dynamic referenceName;
  /// Big data pool reference type.
  final String type;

  /// Creates a new [BigDataPoolParametrizationReferenceResponse].
  /// [referenceName] Reference big data pool name. Type: string (or Expression with resultType string).
  /// [type] Big data pool reference type.
  BigDataPoolParametrizationReferenceResponse({
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory BigDataPoolParametrizationReferenceResponse.fromMap(Map<String, dynamic> map) {
    return BigDataPoolParametrizationReferenceResponse(
      referenceName: map['referenceName'],
      type: map['type'] as String,
    );
  }
}

