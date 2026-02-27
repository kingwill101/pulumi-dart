import 'package:pulumi/pulumi.dart';
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
class LogResourcePolicy extends CustomResource {
  /// Details of the resource policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string. Maximum length of 5120 characters.
  late final Output<String> policyDocument;

  /// Name of the resource policy.
  late final Output<String> policyName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  LogResourcePolicy(
    String name, {
    LogResourcePolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logResourcePolicy:LogResourcePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policyDocument = registerOutput<String>('policyDocument');
    this.policyName = registerOutput<String>('policyName');
    this.region = registerOutput<String>('region');
  }
}
