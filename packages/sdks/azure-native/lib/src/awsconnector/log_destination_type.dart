import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the type of destination to which the flow log data is to be published. Flow log data can be published to CloudWatch Logs or Amazon S3.
enum LogDestinationType implements pulumi.PulumiEnum<String> {
  cloudWatchLogs("cloud-watch-logs"),
  kinesisDataFirehose("kinesis-data-firehose"),
  s3("s3");

  const LogDestinationType(this.wireValue);
  @override
  final String wireValue;

  static LogDestinationType fromValue(String value) {
    for (final item in LogDestinationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogDestinationType value: $value');
  }
}
