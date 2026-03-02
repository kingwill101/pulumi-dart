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
    this.arn,
    this.endpoint,
    this.fields,
    this.name,
    this.samplingRate,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      endpoint: map['endpoint'] == null ? null : ((RealtimeLogConfigEndpoint.fromMap((map['endpoint']! as Map).cast<String, dynamic>())).input()).input(),
      fields: map['fields'] == null ? null : (((map['fields'] as List).cast<String>()).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      samplingRate: map['samplingRate'] == null ? null : ((map['samplingRate'] as int).input()).input(),
    );
  }
}

