// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_realtime_log_config_endpoint.dart';

/// Result data returned by getRealtimeLogConfig.
class GetRealtimeLogConfigResult {
  /// ARN (Amazon Resource Name) of the CloudFront real-time log configuration.
  final String arn;

  /// (Required) Amazon Kinesis data streams where real-time log data is sent.
  final List<GetRealtimeLogConfigEndpoint> endpoints;

  /// (Required) Fields that are included in each real-time log record. See the [AWS documentation](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields) for supported values.
  final List<String> fields;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// (Required) Sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. An integer between `1` and `100`, inclusive.
  final int samplingRate;

  /// Creates a new [GetRealtimeLogConfigResult].
  /// [arn] ARN (Amazon Resource Name) of the CloudFront real-time log configuration.
  /// [endpoints] (Required) Amazon Kinesis data streams where real-time log data is sent.
  /// [fields] (Required) Fields that are included in each real-time log record. See the [AWS documentation](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields) for supported values.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [samplingRate] (Required) Sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. An integer between `1` and `100`, inclusive.
  GetRealtimeLogConfigResult({
    required this.arn,
    required this.endpoints,
    required this.fields,
    required this.id,
    required this.name,
    required this.samplingRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'endpoints':
          pulumi.Input.encodeList<
            GetRealtimeLogConfigEndpoint,
            Map<String, dynamic>
          >(endpoints, (value) => value.toMap()),
      'fields': fields,
      'id': id,
      'name': name,
      'samplingRate': samplingRate,
    };
  }

  factory GetRealtimeLogConfigResult.fromMap(Map<String, dynamic> map) {
    return GetRealtimeLogConfigResult(
      arn: map['arn'] as String,
      endpoints: pulumi.Input.decodeList<GetRealtimeLogConfigEndpoint>(
        map['endpoints'],
        (value) => GetRealtimeLogConfigEndpoint.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      fields: (map['fields'] as List).cast<String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      samplingRate: map['samplingRate'] as int,
    );
  }
}
