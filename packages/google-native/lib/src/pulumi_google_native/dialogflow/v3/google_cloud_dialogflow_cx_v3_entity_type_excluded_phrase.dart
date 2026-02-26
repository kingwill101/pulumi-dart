// ignore_for_file: unused_element, unnecessary_cast

/// An excluded entity phrase that should not be matched.
class GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase {
  /// The word or phrase to be excluded.
  final String value;

  GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase(
      value: map['value'] as String,
    );
  }
}
