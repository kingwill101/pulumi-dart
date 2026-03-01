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

  /// The fields that are included in each real-time log record. See the [AWS documentation](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields) for supported values.
  final pulumi.Input<List<String>> fields;

  /// The unique name to identify this real-time log configuration.
  final pulumi.Input<String>? name;

  /// The sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. An integer between `1` and `100`, inclusive.
  final pulumi.Input<int> samplingRate;

  /// Creates a new [RealtimeLogConfigArgs].
  /// [endpoint] The Amazon Kinesis data streams where real-time log data is sent.
  /// [fields] The fields that are included in each real-time log record. See the [AWS documentation](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields) for supported values.
  /// [name] The unique name to identify this real-time log configuration.
  /// [samplingRate] The sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. An integer between `1` and `100`, inclusive.
  RealtimeLogConfigArgs({
    required RealtimeLogConfigEndpoint endpoint,
    required List<String> fields,
    String? name,
    required int samplingRate,
  }) : endpoint = pulumi.Input.asInput<RealtimeLogConfigEndpoint>(endpoint),
       fields = pulumi.Input.asInput<List<String>>(fields),
       name = pulumi.Input.asOptionalInput<String>(name),
       samplingRate = pulumi.Input.asInput<int>(samplingRate);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint':
          pulumi.Input.mapInputValue<
            RealtimeLogConfigEndpoint,
            Map<String, dynamic>
          >(endpoint, (value) => value.toMap()),
      'fields': fields,
      'name': ?name,
      'samplingRate': samplingRate,
    };
  }

  factory RealtimeLogConfigArgs.fromMap(Map<String, dynamic> map) {
    return RealtimeLogConfigArgs(
      endpoint: RealtimeLogConfigEndpoint.fromMap(
        (map['endpoint'] as Map).cast<String, dynamic>(),
      ),
      fields: (map['fields'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      samplingRate: map['samplingRate'] as int,
    );
  }
}
