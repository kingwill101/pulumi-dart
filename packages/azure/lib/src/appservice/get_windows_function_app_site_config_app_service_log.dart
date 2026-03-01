// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsFunctionAppSiteConfigAppServiceLog {
  /// The amount of disk space to use for logs.
  final int diskQuotaMb;
  /// After how many days backups is deleted.
  final int retentionPeriodDays;

  /// Creates a new [GetWindowsFunctionAppSiteConfigAppServiceLog].
  /// [diskQuotaMb] The amount of disk space to use for logs.
  /// [retentionPeriodDays] After how many days backups is deleted.
  GetWindowsFunctionAppSiteConfigAppServiceLog({
    required this.diskQuotaMb,
    required this.retentionPeriodDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskQuotaMb': diskQuotaMb,
      'retentionPeriodDays': retentionPeriodDays,
    };
  }

  factory GetWindowsFunctionAppSiteConfigAppServiceLog.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppSiteConfigAppServiceLog(
      diskQuotaMb: map['diskQuotaMb'] as int,
      retentionPeriodDays: map['retentionPeriodDays'] as int,
    );
  }
}

