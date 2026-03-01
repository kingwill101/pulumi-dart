// ignore_for_file: unused_element, unnecessary_cast


class BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpiration {
  /// Number of days to retain journal table records.
  final int? days;
  /// Whether journal table record expiration is enabled or disabled. Valid values: `ENABLED`, `DISABLED`.
  final String expiration;

  /// Creates a new [BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpiration].
  /// [days] Number of days to retain journal table records.
  /// [expiration] Whether journal table record expiration is enabled or disabled. Valid values: `ENABLED`, `DISABLED`.
  BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpiration({
    this.days,
    required this.expiration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'expiration': expiration,
    };
  }

  factory BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpiration.fromMap(Map<String, dynamic> map) {
    return BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpiration(
      days: map['days'] == null ? null : map['days'] as int,
      expiration: map['expiration'] as String,
    );
  }
}

