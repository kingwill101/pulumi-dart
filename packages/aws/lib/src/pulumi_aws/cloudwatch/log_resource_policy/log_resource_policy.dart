import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_resource_policy_args.dart';

/// Provides a resource to manage a CloudWatch log resource policy.
///
/// ## Example Usage
///
/// ### Elasticsearch Log Publishing
///
///
///
/// ### Route53 Query Logging
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch log resource policies using the policy name. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logResourcePolicy:LogResourcePolicy MyPolicy MyPolicy
/// ```
class LogResourcePolicy extends pulumi.CustomResource {
  /// Details of the resource policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string. Maximum length of 5120 characters.
  late final pulumi.Output<String> policyDocument;

  /// Name of the resource policy.
  late final pulumi.Output<String> policyName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  LogResourcePolicy(
    String name, {
    LogResourcePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logResourcePolicy:LogResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policyDocument = registerOutput<String>('policyDocument');
    this.policyName = registerOutput<String>('policyName');
    this.region = registerOutput<String>('region');
  }
}
