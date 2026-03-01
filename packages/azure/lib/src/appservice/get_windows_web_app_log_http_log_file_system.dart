// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsWebAppLogHttpLogFileSystem {
  /// The retention period in days.
  final int retentionInDays;
  /// The maximum size in megabytes that log files can use.
  final int retentionInMb;

  /// Creates a new [GetWindowsWebAppLogHttpLogFileSystem].
  /// [retentionInDays] The retention period in days.
  /// [retentionInMb] The maximum size in megabytes that log files can use.
  GetWindowsWebAppLogHttpLogFileSystem({
    required this.retentionInDays,
    required this.retentionInMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionInDays': retentionInDays,
      'retentionInMb': retentionInMb,
    };
  }

  factory GetWindowsWebAppLogHttpLogFileSystem.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppLogHttpLogFileSystem(
      retentionInDays: map['retentionInDays'] as int,
      retentionInMb: map['retentionInMb'] as int,
    );
  }
}

