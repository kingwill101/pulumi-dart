import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_data_protection_policy_args.dart';

/// Provides a CloudWatch Log Data Protection Policy resource.
///
/// Read more about protecting sensitive user data in the [User Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import this resource using the `log_group_name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logDataProtectionPolicy:LogDataProtectionPolicy example my-log-group
/// ```
class LogDataProtectionPolicy extends pulumi.CustomResource {
  /// The name of the log group under which the log stream is to be created.
  late final pulumi.Output<String> logGroupName;

  /// Specifies the data protection policy in JSON. Read more at [Data protection policy syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data-start.html#mask-sensitive-log-data-policysyntax).
  late final pulumi.Output<String> policyDocument;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  LogDataProtectionPolicy(
    String name, {
    LogDataProtectionPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logDataProtectionPolicy:LogDataProtectionPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.logGroupName = registerOutput<String>('logGroupName');
    this.policyDocument = registerOutput<String>('policyDocument');
    this.region = registerOutput<String>('region');
  }
}
