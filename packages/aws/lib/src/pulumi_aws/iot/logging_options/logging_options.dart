import 'package:pulumi/pulumi.dart';
import 'logging_options_args.dart';

/// Provides a resource to manage [default logging options](https://docs.aws.amazon.com/iot/latest/developerguide/configure-logging.html#configure-logging-console).
class LoggingOptions extends CustomResource {
  /// The default logging level. Valid Values: `"DEBUG"`, `"INFO"`, `"ERROR"`, `"WARN"`, `"DISABLED"`.
  late final Output<String> defaultLogLevel;

  /// If `true` all logs are disabled. The default is `false`.
  late final Output<bool?> disableAllLogs;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ARN of the role that allows IoT to write to Cloudwatch logs.
  late final Output<String> roleArn;

  LoggingOptions(
    String name, {
    LoggingOptionsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iot/loggingOptions:LoggingOptions',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.defaultLogLevel = registerOutput<String>('defaultLogLevel');
    this.disableAllLogs = registerOutput<bool?>('disableAllLogs');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
  }
}
