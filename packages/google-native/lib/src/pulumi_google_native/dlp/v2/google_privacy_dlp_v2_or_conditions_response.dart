// ignore_for_file: unused_element, unnecessary_cast

/// There is an OR relationship between these attributes. They are used to determine if a table should be scanned or not in Discovery.
class GooglePrivacyDlpV2OrConditionsResponse {
  /// Minimum age a table must have before Cloud DLP can profile it. Value must be 1 hour or greater.
  final String minAge;

  /// Minimum number of rows that should be present before Cloud DLP profiles a table
  final int minRowCount;

  GooglePrivacyDlpV2OrConditionsResponse({
    required this.minAge,
    required this.minRowCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['minAge'] = minAge;
    map['minRowCount'] = minRowCount;
    return map;
  }

  factory GooglePrivacyDlpV2OrConditionsResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2OrConditionsResponse(
      minAge: map['minAge'] as String,
      minRowCount: map['minRowCount'] as int,
    );
  }
}
