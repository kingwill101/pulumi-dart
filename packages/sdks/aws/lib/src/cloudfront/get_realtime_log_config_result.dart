// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_realtime_log_config_endpoint.dart';

/// Result data returned by getRealtimeLogConfig.
class GetRealtimeLogConfigResult {
  /// ARN of the CloudFront real-time log configuration.
  final String? arn;
  /// (Required) Amazon Kinesis data streams where real-time log data is sent.
  final List<GetRealtimeLogConfigEndpoint>? endpoints;
  /// (Required) Fields that are included in each real-time log record. See the [AWS documentation](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields) for supported values.
  final List<String>? fields;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// (Required) Sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. An integer between `1` and `100`, inclusive.
  final int? samplingRate;

  /// Creates a new [GetRealtimeLogConfigResult].
  /// [arn] ARN of the CloudFront real-time log configuration.
  /// [endpoints] (Required) Amazon Kinesis data streams where real-time log data is sent.
  /// [fields] (Required) Fields that are included in each real-time log record. See the [AWS documentation](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields) for supported values.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [samplingRate] (Required) Sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. An integer between `1` and `100`, inclusive.
  const GetRealtimeLogConfigResult({
    this.arn,
    this.endpoints,
    this.fields,
    this.id,
    this.name,
    this.samplingRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'endpoints': ?(() { final guardedValue = endpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRealtimeLogConfigEndpoint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'fields': ?fields,
      'id': ?id,
      'name': ?name,
      'samplingRate': ?samplingRate,
    };
  }

  factory GetRealtimeLogConfigResult.fromMap(Map<String, dynamic> map) {
    return GetRealtimeLogConfigResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRealtimeLogConfigEndpoint>(guardedValue, (value) => GetRealtimeLogConfigEndpoint.fromMap((value as Map).cast<String, dynamic>())); })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      samplingRate: (() { final guardedValue = map['samplingRate']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
