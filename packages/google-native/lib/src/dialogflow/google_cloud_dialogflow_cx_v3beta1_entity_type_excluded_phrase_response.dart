// ignore_for_file: unused_element, unnecessary_cast

/// An excluded entity phrase that should not be matched.
class GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhraseResponse {
  /// The word or phrase to be excluded.
  final String value;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhraseResponse].
  /// [value] The word or phrase to be excluded.
  GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhraseResponse({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhraseResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhraseResponse(
      value: map['value'] as String,
    );
  }
}
