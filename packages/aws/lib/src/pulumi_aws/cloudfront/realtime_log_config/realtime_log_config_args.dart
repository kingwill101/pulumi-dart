// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../realtime_log_config_endpoint/realtime_log_config_endpoint.dart';

/// The set of arguments for RealtimeLogConfig.
class RealtimeLogConfigArgs {
  /// The Amazon Kinesis data streams where real-time log data is sent.
  final pulumi.Input<RealtimeLogConfigEndpoint> endpoint;

  /// The fields that are included in each real-time log record. See the [AWS documentation](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields) for supported values.
  final pulumi.Input<List<String>> fields;

  /// The unique name to identify this real-time log configuration.
  final pulumi.Input<String>? name;

  /// The sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. An integer between `1` and `100`, inclusive.
  final pulumi.Input<int> samplingRate;

  RealtimeLogConfigArgs({
    required this.endpoint,
    required this.fields,
    this.name,
    required this.samplingRate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpoint'] = pulumi.Input.mapInputValue<RealtimeLogConfigEndpoint,
        Map<String, dynamic>>(endpoint, (value) => value.toMap());
    map['fields'] = fields;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['samplingRate'] = samplingRate;
    return map;
  }

  factory RealtimeLogConfigArgs.fromMap(Map<String, dynamic> map) {
    return RealtimeLogConfigArgs(
      endpoint:
          pulumi.Input.asInput<RealtimeLogConfigEndpoint>(map['endpoint']),
      fields: pulumi.Input.asInput<List<String>>(map['fields']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      samplingRate: pulumi.Input.asInput<int>(map['samplingRate']),
    );
  }
}
