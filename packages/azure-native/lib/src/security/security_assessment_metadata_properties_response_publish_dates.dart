// ignore_for_file: unused_element, unnecessary_cast


class SecurityAssessmentMetadataPropertiesResponsePublishDates {
  final String? gA;
  final String public;

  /// Creates a new [SecurityAssessmentMetadataPropertiesResponsePublishDates].
  /// [gA] Optional.
  /// [public] Required.
  SecurityAssessmentMetadataPropertiesResponsePublishDates({
    this.gA,
    required this.public,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gA': ?gA,
      'public': public,
    };
  }

  factory SecurityAssessmentMetadataPropertiesResponsePublishDates.fromMap(Map<String, dynamic> map) {
    return SecurityAssessmentMetadataPropertiesResponsePublishDates(
      gA: map['gA'] == null ? null : map['gA'] as String,
      public: map['public'] as String,
    );
  }
}

