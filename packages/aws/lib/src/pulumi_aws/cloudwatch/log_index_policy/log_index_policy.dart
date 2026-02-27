import 'package:pulumi/pulumi.dart';
import 'log_index_policy_args.dart';

/// Resource for managing an AWS CloudWatch Logs Index Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Logs Index Policy using the `log_group_name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logIndexPolicy:LogIndexPolicy example /aws/log/group/name
/// ```
class LogIndexPolicy extends CustomResource {
  /// Log group name to set the policy for.
  late final Output<String> logGroupName;

  /// JSON policy document. This is a JSON formatted string.
  late final Output<String> policyDocument;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  LogIndexPolicy(
    String name, {
    LogIndexPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logIndexPolicy:LogIndexPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.logGroupName = registerOutput<String>('logGroupName');
    this.policyDocument = registerOutput<String>('policyDocument');
    this.region = registerOutput<String>('region');
  }
}
