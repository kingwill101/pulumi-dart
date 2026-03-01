// ignore_for_file: unused_element, unnecessary_cast

/// An excluded entity phrase that should not be matched.
class GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase {
  /// The word or phrase to be excluded.
  final String value;

  /// Creates a new [GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase].
  /// [value] The word or phrase to be excluded.
  GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase({required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': value};
  }

  factory GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase(
      value: map['value'] as String,
    );
  }
}
