// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'realtime_log_config_endpoint.dart';

/// {@template pulumi_cloudfront_realtime_log_config_realtime_log_config_args_doc}
/// The set of arguments for RealtimeLogConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_realtime_log_config_realtime_log_config_args_doc}
class RealtimeLogConfigArgs {
  /// The Amazon Kinesis data streams where real-time log data is sent.
  final pulumi.Input<RealtimeLogConfigEndpoint> endpoint;
  /// The fields that are included in each real-time log record. See the [AWS documentation](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields) for supported values. This includes `viewer-request-log-data` and `viewer-response-log-data`, which carry the custom data that a CloudFront Function logs with `cf.logCustomData()`.
  final pulumi.Input<List<String>> fields;
  /// The unique name to identify this real-time log configuration.
  final pulumi.Input<String?>? name;
  /// The sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. An integer between `1` and `100`, inclusive.
  final pulumi.Input<int> samplingRate;

  /// Creates a new [RealtimeLogConfigArgs].
  /// [endpoint] The Amazon Kinesis data streams where real-time log data is sent.
  /// [fields] The fields that are included in each real-time log record. See the [AWS documentation](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields) for supported values. This includes `viewer-request-log-data` and `viewer-response-log-data`, which carry the custom data that a CloudFront Function logs with `cf.logCustomData()`.
  /// [name] The unique name to identify this real-time log configuration.
  /// [samplingRate] The sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. An integer between `1` and `100`, inclusive.
  const RealtimeLogConfigArgs({
    required this.endpoint,
    required this.fields,
    this.name,
    required this.samplingRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': pulumi.Input.mapInputValue<RealtimeLogConfigEndpoint, Map<String, dynamic>>(endpoint, (value) => value.toMap()),
      'fields': fields,
      'name': ?name,
      'samplingRate': samplingRate,
    };
  }

  factory RealtimeLogConfigArgs.fromMap(Map<String, dynamic> map) {
    return RealtimeLogConfigArgs(
      endpoint: pulumi.Input.fromValue(RealtimeLogConfigEndpoint.fromMap((map['endpoint']! as Map).cast<String, dynamic>())),
      fields: pulumi.Input.fromValue((map['fields'] as List).cast<String>()),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      samplingRate: pulumi.Input.fromValue((map['samplingRate'] as num).toInt()),
    );
  }
}
