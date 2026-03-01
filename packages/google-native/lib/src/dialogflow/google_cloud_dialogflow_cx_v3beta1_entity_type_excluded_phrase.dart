// ignore_for_file: unused_element, unnecessary_cast

/// An excluded entity phrase that should not be matched.
class GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase {
  /// The word or phrase to be excluded.
  final String value;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase].
  /// [value] The word or phrase to be excluded.
  GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase({required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': value};
  }

  factory GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase(
      value: map['value'] as String,
    );
  }
}
