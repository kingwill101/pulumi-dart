// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxFunctionAppSiteConfigAppServiceLog {
  /// The amount of disk space used for logs.
  final int diskQuotaMb;
  /// After how many days backups are deleted.
  final int retentionPeriodDays;

  /// Creates a new [GetLinuxFunctionAppSiteConfigAppServiceLog].
  /// [diskQuotaMb] The amount of disk space used for logs.
  /// [retentionPeriodDays] After how many days backups are deleted.
  GetLinuxFunctionAppSiteConfigAppServiceLog({
    required this.diskQuotaMb,
    required this.retentionPeriodDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskQuotaMb': diskQuotaMb,
      'retentionPeriodDays': retentionPeriodDays,
    };
  }

  factory GetLinuxFunctionAppSiteConfigAppServiceLog.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppSiteConfigAppServiceLog(
      diskQuotaMb: map['diskQuotaMb'] as int,
      retentionPeriodDays: map['retentionPeriodDays'] as int,
    );
  }
}

