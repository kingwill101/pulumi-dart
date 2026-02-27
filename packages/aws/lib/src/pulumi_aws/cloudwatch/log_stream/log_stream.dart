import 'package:pulumi/pulumi.dart';
import 'log_stream_args.dart';

/// Provides a CloudWatch Log Stream resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloudwatch Log Stream using the stream's `log_group_name` and `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logStream:LogStream foo Yada:SampleLogStream1234
/// ```
class LogStream extends CustomResource {
  /// The Amazon Resource Name (ARN) specifying the log stream.
  late final Output<String> arn;

  /// The name of the log group under which the log stream is to be created.
  late final Output<String> logGroupName;

  /// The name of the log stream. Must not be longer than 512 characters and must not contain `:`
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  LogStream(
    String name, {
    LogStreamArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logStream:LogStream',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.logGroupName = registerOutput<String>('logGroupName');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
