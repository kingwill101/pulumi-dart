// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxWebAppLogHttpLogFileSystem {
  /// The retention period in days.
  final int retentionInDays;
  /// The maximum size in megabytes that log files can use.
  final int retentionInMb;

  /// Creates a new [GetLinuxWebAppLogHttpLogFileSystem].
  /// [retentionInDays] The retention period in days.
  /// [retentionInMb] The maximum size in megabytes that log files can use.
  GetLinuxWebAppLogHttpLogFileSystem({
    required this.retentionInDays,
    required this.retentionInMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionInDays': retentionInDays,
      'retentionInMb': retentionInMb,
    };
  }

  factory GetLinuxWebAppLogHttpLogFileSystem.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppLogHttpLogFileSystem(
      retentionInDays: map['retentionInDays'] as int,
      retentionInMb: map['retentionInMb'] as int,
    );
  }
}

