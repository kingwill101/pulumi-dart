// ignore_for_file: unused_element, unnecessary_cast

/// There is an OR relationship between these attributes. They are used to determine if a table should be scanned or not in Discovery.
class GooglePrivacyDlpV2OrConditions {
  /// Minimum age a table must have before Cloud DLP can profile it. Value must be 1 hour or greater.
  final String? minAge;

  /// Minimum number of rows that should be present before Cloud DLP profiles a table
  final int? minRowCount;

  GooglePrivacyDlpV2OrConditions({
    this.minAge,
    this.minRowCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final minAgeValue = minAge;
    if (minAgeValue != null) {
      map['minAge'] = minAgeValue;
    }
    final minRowCountValue = minRowCount;
    if (minRowCountValue != null) {
      map['minRowCount'] = minRowCountValue;
    }
    return map;
  }

  factory GooglePrivacyDlpV2OrConditions.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2OrConditions(
      minAge: map['minAge'] == null ? null : map['minAge'] as String,
      minRowCount:
          map['minRowCount'] == null ? null : map['minRowCount'] as int,
    );
  }
}
