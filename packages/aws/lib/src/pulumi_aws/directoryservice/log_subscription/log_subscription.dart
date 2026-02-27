import 'package:pulumi/pulumi.dart';
import 'log_subscription_args.dart';

/// Provides a Log subscription for AWS Directory Service that pushes logs to cloudwatch.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Directory Service Log Subscriptions using the directory id. For example:
///
/// ```sh
/// $ pulumi import aws:directoryservice/logSubscription:LogSubscription msad d-1234567890
/// ```
class LogSubscription extends CustomResource {
  /// ID of directory.
  late final Output<String> directoryId;

  /// Name of the cloudwatch log group to which the logs should be published. The log group should be already created and the directory service principal should be provided with required permission to create stream and publish logs. Changing this value would delete the current subscription and create a new one. A directory can only have one log subscription at a time.
  late final Output<String> logGroupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  LogSubscription(
    String name, {
    LogSubscriptionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/logSubscription:LogSubscription',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.directoryId = registerOutput<String>('directoryId');
    this.logGroupName = registerOutput<String>('logGroupName');
    this.region = registerOutput<String>('region');
  }
}
