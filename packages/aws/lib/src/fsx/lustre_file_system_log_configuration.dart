// ignore_for_file: unused_element, unnecessary_cast


class LustreFileSystemLogConfiguration {
  /// The Amazon Resource Name (ARN) that specifies the destination of the logs. The name of the Amazon CloudWatch Logs log group must begin with the `/aws/fsx` prefix. If you do not provide a destination, Amazon FSx will create and use a log stream in the CloudWatch Logs `/aws/fsx/lustre` log group.
  final String? destination;
  /// Sets which data repository events are logged by Amazon FSx. Valid values are `WARN_ONLY`, `FAILURE_ONLY`, `ERROR_ONLY`, `WARN_ERROR` and `DISABLED`. Default value is `DISABLED`.
  final String? level;

  /// Creates a new [LustreFileSystemLogConfiguration].
  /// [destination] The Amazon Resource Name (ARN) that specifies the destination of the logs. The name of the Amazon CloudWatch Logs log group must begin with the `/aws/fsx` prefix. If you do not provide a destination, Amazon FSx will create and use a log stream in the CloudWatch Logs `/aws/fsx/lustre` log group.
  /// [level] Sets which data repository events are logged by Amazon FSx. Valid values are `WARN_ONLY`, `FAILURE_ONLY`, `ERROR_ONLY`, `WARN_ERROR` and `DISABLED`. Default value is `DISABLED`.
  LustreFileSystemLogConfiguration({
    this.destination,
    this.level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'level': ?level,
    };
  }

  factory LustreFileSystemLogConfiguration.fromMap(Map<String, dynamic> map) {
    return LustreFileSystemLogConfiguration(
      destination: map['destination'] == null ? null : map['destination'] as String,
      level: map['level'] == null ? null : map['level'] as String,
    );
  }
}

