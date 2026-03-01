// ignore_for_file: unused_element, unnecessary_cast


/// Http logs to file system configuration.
class FileSystemHttpLogsConfigResponse {
  /// True if configuration is enabled, false if it is disabled and null if configuration is not set.
  final bool? enabled;
  /// Retention in days.
  /// Remove files older than X days.
  /// 0 or lower means no retention.
  final int? retentionInDays;
  /// Maximum size in megabytes that http log files can use.
  /// When reached old log files will be removed to make space for new ones.
  /// Value can range between 25 and 100.
  final int? retentionInMb;

  /// Creates a new [FileSystemHttpLogsConfigResponse].
  /// [enabled] True if configuration is enabled, false if it is disabled and null if configuration is not set.
  /// [retentionInDays] Retention in days.
  /// [retentionInMb] Maximum size in megabytes that http log files can use.
  FileSystemHttpLogsConfigResponse({
    this.enabled,
    this.retentionInDays,
    this.retentionInMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'retentionInDays': ?retentionInDays,
      'retentionInMb': ?retentionInMb,
    };
  }

  factory FileSystemHttpLogsConfigResponse.fromMap(Map<String, dynamic> map) {
    return FileSystemHttpLogsConfigResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      retentionInDays: map['retentionInDays'] == null ? null : map['retentionInDays'] as int,
      retentionInMb: map['retentionInMb'] == null ? null : map['retentionInMb'] as int,
    );
  }
}

