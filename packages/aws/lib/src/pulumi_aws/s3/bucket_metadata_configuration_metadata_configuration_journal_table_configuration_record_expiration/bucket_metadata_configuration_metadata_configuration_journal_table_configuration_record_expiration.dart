// ignore_for_file: unused_element, unnecessary_cast

class BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpiration {
  /// Number of days to retain journal table records.
  final int? days;

  /// Whether journal table record expiration is enabled or disabled. Valid values: `ENABLED`, `DISABLED`.
  final String expiration;

  BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpiration({
    this.days,
    required this.expiration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final daysValue = days;
    if (daysValue != null) {
      map['days'] = daysValue;
    }
    map['expiration'] = expiration;
    return map;
  }

  factory BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpiration.fromMap(
      Map<String, dynamic> map) {
    return BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpiration(
      days: map['days'] == null ? null : map['days'] as int,
      expiration: map['expiration'] as String,
    );
  }
}
