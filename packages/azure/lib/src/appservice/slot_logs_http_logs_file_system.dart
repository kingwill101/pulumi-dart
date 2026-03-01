// ignore_for_file: unused_element, unnecessary_cast


class SlotLogsHttpLogsFileSystem {
  /// The number of days to retain logs for.
  final int retentionInDays;
  /// The maximum size in megabytes that HTTP log files can use before being removed.
  final int retentionInMb;

  /// Creates a new [SlotLogsHttpLogsFileSystem].
  /// [retentionInDays] The number of days to retain logs for.
  /// [retentionInMb] The maximum size in megabytes that HTTP log files can use before being removed.
  SlotLogsHttpLogsFileSystem({
    required this.retentionInDays,
    required this.retentionInMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionInDays': retentionInDays,
      'retentionInMb': retentionInMb,
    };
  }

  factory SlotLogsHttpLogsFileSystem.fromMap(Map<String, dynamic> map) {
    return SlotLogsHttpLogsFileSystem(
      retentionInDays: map['retentionInDays'] as int,
      retentionInMb: map['retentionInMb'] as int,
    );
  }
}

