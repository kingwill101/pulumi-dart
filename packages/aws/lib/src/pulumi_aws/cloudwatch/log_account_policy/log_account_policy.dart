import 'package:pulumi/pulumi.dart';
import 'log_account_policy_args.dart';

/// Provides a CloudWatch Log Account Policy resource.
///
/// ## Example Usage
///
/// ### Account Data Protection Policy
///
///
///
/// ### Subscription Filter Policy
///
///
///
/// ### Field Index Policy
///
///
///
/// ## Import
///
/// Using `pulumi import`, import this resource using the `policy_name` and `policy_type` separated by `:`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logAccountPolicy:LogAccountPolicy example "my-account-policy:SUBSCRIPTION_FILTER_POLICY"
/// ```
class LogAccountPolicy extends CustomResource {
  /// Text of the account policy. Refer to the [AWS docs](https://docs.aws.amazon.com/cli/latest/reference/logs/put-account-policy.html) for more information.
  late final Output<String> policyDocument;

  /// Name of the account policy.
  late final Output<String> policyName;

  /// Type of account policy. One of `DATA_PROTECTION_POLICY`, `SUBSCRIPTION_FILTER_POLICY`, `FIELD_INDEX_POLICY` or `TRANSFORMER_POLICY`. You can have one account policy per type in an account.
  late final Output<String> policyType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Currently defaults to and only accepts the value: `ALL`.
  late final Output<String?> scope;

  /// Criteria for applying a subscription filter policy to a selection of log groups. The only allowable criteria selector is `LogGroupName NOT IN []`.
  late final Output<String?> selectionCriteria;

  LogAccountPolicy(
    String name, {
    LogAccountPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logAccountPolicy:LogAccountPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policyDocument = registerOutput<String>('policyDocument');
    this.policyName = registerOutput<String>('policyName');
    this.policyType = registerOutput<String>('policyType');
    this.region = registerOutput<String>('region');
    this.scope = registerOutput<String?>('scope');
    this.selectionCriteria = registerOutput<String?>('selectionCriteria');
  }
}
