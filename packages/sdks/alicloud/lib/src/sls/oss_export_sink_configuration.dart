// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oss_export_sink_configuration_sink.dart';

class OssExportSinkConfiguration {
  /// The beginning of the time range to ship data. The value 1 specifies that the data shipping job ships data from the first log in the Logstore. Example value: 1718380800
  final pulumi.Input<int> fromTime;
  /// The name of the Logstore.
  final pulumi.Input<String> logstore;
  /// The ARN of the RAM role that is used to write data to OSS. Example value: acs:ram::xxxxxxx
  final pulumi.Input<String> roleArn;
  /// The configurations of the Object Storage Service (OSS) data shipping job. See `sink` below.
  final pulumi.Input<OssExportSinkConfigurationSink> sink;
  /// The end of the time range to ship data. The value 0 specifies that the data shipping job continuously ships data until the job is manually stopped. Example value: 1718380800
  final pulumi.Input<int> toTime;

  /// Creates a new [OssExportSinkConfiguration].
  /// [fromTime] The beginning of the time range to ship data. The value 1 specifies that the data shipping job ships data from the first log in the Logstore. Example value: 1718380800
  /// [logstore] The name of the Logstore.
  /// [roleArn] The ARN of the RAM role that is used to write data to OSS. Example value: acs:ram::xxxxxxx
  /// [sink] The configurations of the Object Storage Service (OSS) data shipping job. See `sink` below.
  /// [toTime] The end of the time range to ship data. The value 0 specifies that the data shipping job continuously ships data until the job is manually stopped. Example value: 1718380800
  OssExportSinkConfiguration({
    required this.fromTime,
    required this.logstore,
    required this.roleArn,
    required this.sink,
    required this.toTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromTime': fromTime,
      'logstore': logstore,
      'roleArn': roleArn,
      'sink': pulumi.Input.mapInputValue<OssExportSinkConfigurationSink, Map<String, dynamic>>(sink, (value) => value.toMap()),
      'toTime': toTime,
    };
  }

  factory OssExportSinkConfiguration.fromMap(Map<String, dynamic> map) {
    return OssExportSinkConfiguration(
      fromTime: (map['fromTime'] as int).input(),
      logstore: (map['logstore'] as String).input(),
      roleArn: (map['roleArn'] as String).input(),
      sink: (OssExportSinkConfigurationSink.fromMap((map['sink'] as Map).cast<String, dynamic>())).input(),
      toTime: (map['toTime'] as int).input(),
    );
  }
}

