// ignore_for_file: unused_element, unnecessary_cast

class StreamKinesisConfiguration {
  /// Enables QLDB to publish multiple data records in a single Kinesis Data Streams record, increasing the number of records sent per API call. Default: `true`.
  final bool? aggregationEnabled;

  /// The Amazon Resource Name (ARN) of the Kinesis Data Streams resource.
  final String streamArn;

  StreamKinesisConfiguration({
    this.aggregationEnabled,
    required this.streamArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggregationEnabledValue = aggregationEnabled;
    if (aggregationEnabledValue != null) {
      map['aggregationEnabled'] = aggregationEnabledValue;
    }
    map['streamArn'] = streamArn;
    return map;
  }

  factory StreamKinesisConfiguration.fromMap(Map<String, dynamic> map) {
    return StreamKinesisConfiguration(
      aggregationEnabled: map['aggregationEnabled'] == null
          ? null
          : map['aggregationEnabled'] as bool,
      streamArn: map['streamArn'] as String,
    );
  }
}
