// ignore_for_file: unused_element, unnecessary_cast


class SecurityAssessmentMetadataPropertiesResponseResponsePublishDates {
  final String? gA;
  final String public;

  /// Creates a new [SecurityAssessmentMetadataPropertiesResponseResponsePublishDates].
  /// [gA] Optional.
  /// [public] Required.
  SecurityAssessmentMetadataPropertiesResponseResponsePublishDates({
    this.gA,
    required this.public,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gA': ?gA,
      'public': public,
    };
  }

  factory SecurityAssessmentMetadataPropertiesResponseResponsePublishDates.fromMap(Map<String, dynamic> map) {
    return SecurityAssessmentMetadataPropertiesResponseResponsePublishDates(
      gA: map['gA'] == null ? null : map['gA'] as String,
      public: map['public'] as String,
    );
  }
}

