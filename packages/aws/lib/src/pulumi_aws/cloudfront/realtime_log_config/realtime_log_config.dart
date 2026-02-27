import 'package:pulumi/pulumi.dart';
import '../realtime_log_config_endpoint/realtime_log_config_endpoint.dart';
import 'realtime_log_config_args.dart';

/// Provides a CloudFront real-time log configuration resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CloudFront real-time log configuration.
///
///
/// Using `pulumi import`, import CloudFront real-time log configurations using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/realtimeLogConfig:RealtimeLogConfig example arn:aws:cloudfront::111122223333:realtime-log-config/ExampleNameForRealtimeLogConfig
/// ```
class RealtimeLogConfig extends CustomResource {
  /// The ARN (Amazon Resource Name) of the CloudFront real-time log configuration.
  late final Output<String> arn;

  /// The Amazon Kinesis data streams where real-time log data is sent.
  late final Output<RealtimeLogConfigEndpoint> endpoint;

  /// The fields that are included in each real-time log record. See the [AWS documentation](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields) for supported values.
  late final Output<List<String>> fields;

  /// The unique name to identify this real-time log configuration.
  late final Output<String> name;

  /// The sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. An integer between `1` and `100`, inclusive.
  late final Output<int> samplingRate;

  RealtimeLogConfig(
    String name, {
    RealtimeLogConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/realtimeLogConfig:RealtimeLogConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.endpoint = registerOutput<RealtimeLogConfigEndpoint>('endpoint');
    this.fields = registerOutput<List<String>>('fields');
    this.name = registerOutput<String>('name');
    this.samplingRate = registerOutput<int>('samplingRate');
  }
}
