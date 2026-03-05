// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpiration {
  /// Number of days to retain journal table records.
  final pulumi.Input<int>? days;
  /// Whether journal table record expiration is enabled or disabled. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> expiration;

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
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      expiration: pulumi.Input.fromValue(map['expiration'] as String),
    );
  }
}

