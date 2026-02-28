// ignore_for_file: unused_element, unnecessary_cast

/// An excluded entity phrase that should not be matched.
class GoogleCloudDialogflowCxV3EntityTypeExcludedPhraseResponse {
  /// The word or phrase to be excluded.
  final String value;

  /// Creates a new [GoogleCloudDialogflowCxV3EntityTypeExcludedPhraseResponse].
  /// [value] The word or phrase to be excluded.
  GoogleCloudDialogflowCxV3EntityTypeExcludedPhraseResponse({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory GoogleCloudDialogflowCxV3EntityTypeExcludedPhraseResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3EntityTypeExcludedPhraseResponse(
      value: map['value'] as String,
    );
  }
}
