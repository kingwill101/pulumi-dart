import 'package:pulumi/pulumi.dart';
import 'organization_custom_rule_args.dart';

/// Manages a Config Organization Custom Rule. More information about these rules can be found in the [Enabling AWS Config Rules Across all Accounts in Your Organization](https://docs.aws.amazon.com/config/latest/developerguide/config-rule-multi-account-deployment.html) and [AWS Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html) documentation. For working with Organization Managed Rules (those invoking an AWS managed rule), see the `aws_config_organization_managed__rule` resource.
///
/// > **NOTE:** This resource must be created in the Organization master account and rules will include the master account unless its ID is added to the `excluded_accounts` argument.
///
/// > **NOTE:** The proper Lambda permission to allow the AWS Config service invoke the Lambda Function must be in place before the rule will successfully create or update. See also the `aws.lambda.Permission` resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Config Organization Custom Rules using the name. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/organizationCustomRule:OrganizationCustomRule example example
/// ```
class OrganizationCustomRule extends CustomResource {
  /// Amazon Resource Name (ARN) of the rule
  late final Output<String> arn;

  /// Description of the rule
  late final Output<String?> description;

  /// List of AWS account identifiers to exclude from the rule
  late final Output<List<String>?> excludedAccounts;

  /// A string in JSON format that is passed to the AWS Config Rule Lambda Function
  late final Output<String?> inputParameters;

  /// Amazon Resource Name (ARN) of the rule Lambda Function
  late final Output<String> lambdaFunctionArn;

  /// The maximum frequency with which AWS Config runs evaluations for a rule, if the rule is triggered at a periodic frequency. Defaults to `TwentyFour_Hours` for periodic frequency triggered rules. Valid values: `One_Hour`, `Three_Hours`, `Six_Hours`, `Twelve_Hours`, or `TwentyFour_Hours`.
  late final Output<String?> maximumExecutionFrequency;

  /// The name of the rule
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Identifier of the AWS resource to evaluate
  late final Output<String?> resourceIdScope;

  /// List of types of AWS resources to evaluate
  late final Output<List<String>?> resourceTypesScopes;

  /// Tag key of AWS resources to evaluate
  late final Output<String?> tagKeyScope;

  /// Tag value of AWS resources to evaluate
  late final Output<String?> tagValueScope;

  /// List of notification types that trigger AWS Config to run an evaluation for the rule. Valid values: `ConfigurationItemChangeNotification`, `OversizedConfigurationItemChangeNotification`, and `ScheduledNotification`
  late final Output<List<String>> triggerTypes;

  OrganizationCustomRule(
    String name, {
    OrganizationCustomRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cfg/organizationCustomRule:OrganizationCustomRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.excludedAccounts = registerOutput<List<String>?>('excludedAccounts');
    this.inputParameters = registerOutput<String?>('inputParameters');
    this.lambdaFunctionArn = registerOutput<String>('lambdaFunctionArn');
    this.maximumExecutionFrequency =
        registerOutput<String?>('maximumExecutionFrequency');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.resourceIdScope = registerOutput<String?>('resourceIdScope');
    this.resourceTypesScopes =
        registerOutput<List<String>?>('resourceTypesScopes');
    this.tagKeyScope = registerOutput<String?>('tagKeyScope');
    this.tagValueScope = registerOutput<String?>('tagValueScope');
    this.triggerTypes = registerOutput<List<String>>('triggerTypes');
  }
}
