// ignore_for_file: unused_element, unnecessary_cast


/// Holds details about term type and duration.
class TermTypeDetailsResponse {
  /// Term Commitment Type
  final String termType;
  /// Duration for the term type.
  final String termTypeDuration;

  /// Creates a new [TermTypeDetailsResponse].
  /// [termType] Term Commitment Type
  /// [termTypeDuration] Duration for the term type.
  TermTypeDetailsResponse({
    required this.termType,
    required this.termTypeDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'termType': termType,
      'termTypeDuration': termTypeDuration,
    };
  }

  factory TermTypeDetailsResponse.fromMap(Map<String, dynamic> map) {
    return TermTypeDetailsResponse(
      termType: map['termType'] as String,
      termTypeDuration: map['termTypeDuration'] as String,
    );
  }
}

