// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'realtime_log_config_endpoint.dart';

/// Input properties used for looking up and filtering RealtimeLogConfig resources.
class RealtimeLogConfigState {
  /// The ARN (Amazon Resource Name) of the CloudFront real-time log configuration.
  final pulumi.Input<String>? arn;
  /// The Amazon Kinesis data streams where real-time log data is sent.
  final pulumi.Input<RealtimeLogConfigEndpoint>? endpoint;
  /// The fields that are included in each real-time log record. See the [AWS documentation](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields) for supported values.
  final pulumi.Input<List<String>>? fields;
  /// The unique name to identify this real-time log configuration.
  final pulumi.Input<String>? name;
  /// The sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. An integer between `1` and `100`, inclusive.
  final pulumi.Input<int>? samplingRate;

  /// Creates a new [RealtimeLogConfigState].
  /// [arn] The ARN (Amazon Resource Name) of the CloudFront real-time log configuration.
  /// [endpoint] The Amazon Kinesis data streams where real-time log data is sent.
  /// [fields] The fields that are included in each real-time log record. See the [AWS documentation](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields) for supported values.
  /// [name] The unique name to identify this real-time log configuration.
  /// [samplingRate] The sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. An integer between `1` and `100`, inclusive.
  RealtimeLogConfigState({
    pulumi.Output<String>? arn,
    pulumi.Output<RealtimeLogConfigEndpoint>? endpoint,
    pulumi.Output<List<String>>? fields,
    pulumi.Output<String>? name,
    pulumi.Output<int>? samplingRate,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      endpoint = pulumi.Input.asOptionalInput<RealtimeLogConfigEndpoint>(endpoint),
      fields = pulumi.Input.asOptionalInput<List<String>>(fields),
      name = pulumi.Input.asOptionalInput<String>(name),
      samplingRate = pulumi.Input.asOptionalInput<int>(samplingRate);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'endpoint': ?pulumi.Input.mapOptionalInputValue<RealtimeLogConfigEndpoint, Map<String, dynamic>>(endpoint, (value) => value.toMap()),
      'fields': ?fields,
      'name': ?name,
      'samplingRate': ?samplingRate,
    };
  }

  factory RealtimeLogConfigState.fromMap(Map<String, dynamic> map) {
    return RealtimeLogConfigState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<RealtimeLogConfigEndpoint>(RealtimeLogConfigEndpoint.fromMap((map['endpoint'] as Map).cast<String, dynamic>())),
      fields: map['fields'] == null ? null : pulumi.Output.create<List<String>>((map['fields'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      samplingRate: map['samplingRate'] == null ? null : pulumi.Output.create<int>(map['samplingRate'] as int),
    );
  }
}

