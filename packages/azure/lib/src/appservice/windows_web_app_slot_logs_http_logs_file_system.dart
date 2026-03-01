// ignore_for_file: unused_element, unnecessary_cast


class WindowsWebAppSlotLogsHttpLogsFileSystem {
  /// The retention period in days. A values of `0` means no retention.
  final int retentionInDays;
  /// The maximum size in megabytes that log files can use.
  final int retentionInMb;

  /// Creates a new [WindowsWebAppSlotLogsHttpLogsFileSystem].
  /// [retentionInDays] The retention period in days. A values of `0` means no retention.
  /// [retentionInMb] The maximum size in megabytes that log files can use.
  WindowsWebAppSlotLogsHttpLogsFileSystem({
    required this.retentionInDays,
    required this.retentionInMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionInDays': retentionInDays,
      'retentionInMb': retentionInMb,
    };
  }

  factory WindowsWebAppSlotLogsHttpLogsFileSystem.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotLogsHttpLogsFileSystem(
      retentionInDays: map['retentionInDays'] as int,
      retentionInMb: map['retentionInMb'] as int,
    );
  }
}

