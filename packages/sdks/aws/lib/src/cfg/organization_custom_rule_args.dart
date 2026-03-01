// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_organization_custom_rule_organization_custom_rule_args_doc}
/// The set of arguments for OrganizationCustomRule.
/// {@endtemplate}
/// {@macro pulumi_cfg_organization_custom_rule_organization_custom_rule_args_doc}
class OrganizationCustomRuleArgs {
  /// Description of the rule
  final pulumi.Input<String>? description;
  /// List of AWS account identifiers to exclude from the rule
  final pulumi.Input<List<String>>? excludedAccounts;
  /// A string in JSON format that is passed to the AWS Config Rule Lambda Function
  final pulumi.Input<String>? inputParameters;
  /// Amazon Resource Name (ARN) of the rule Lambda Function
  final pulumi.Input<String> lambdaFunctionArn;
  /// The maximum frequency with which AWS Config runs evaluations for a rule, if the rule is triggered at a periodic frequency. Defaults to `TwentyFour_Hours` for periodic frequency triggered rules. Valid values: `One_Hour`, `Three_Hours`, `Six_Hours`, `Twelve_Hours`, or `TwentyFour_Hours`.
  final pulumi.Input<String>? maximumExecutionFrequency;
  /// The name of the rule
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of the AWS resource to evaluate
  final pulumi.Input<String>? resourceIdScope;
  /// List of types of AWS resources to evaluate
  final pulumi.Input<List<String>>? resourceTypesScopes;
  /// Tag key of AWS resources to evaluate
  final pulumi.Input<String>? tagKeyScope;
  /// Tag value of AWS resources to evaluate
  final pulumi.Input<String>? tagValueScope;
  /// List of notification types that trigger AWS Config to run an evaluation for the rule. Valid values: `ConfigurationItemChangeNotification`, `OversizedConfigurationItemChangeNotification`, and `ScheduledNotification`
  final pulumi.Input<List<String>> triggerTypes;

  /// Creates a new [OrganizationCustomRuleArgs].
  /// [description] Description of the rule
  /// [excludedAccounts] List of AWS account identifiers to exclude from the rule
  /// [inputParameters] A string in JSON format that is passed to the AWS Config Rule Lambda Function
  /// [lambdaFunctionArn] Amazon Resource Name (ARN) of the rule Lambda Function
  /// [maximumExecutionFrequency] The maximum frequency with which AWS Config runs evaluations for a rule, if the rule is triggered at a periodic frequency. Defaults to `TwentyFour_Hours` for periodic frequency triggered rules. Valid values: `One_Hour`, `Three_Hours`, `Six_Hours`, `Twelve_Hours`, or `TwentyFour_Hours`.
  /// [name] The name of the rule
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceIdScope] Identifier of the AWS resource to evaluate
  /// [resourceTypesScopes] List of types of AWS resources to evaluate
  /// [tagKeyScope] Tag key of AWS resources to evaluate
  /// [tagValueScope] Tag value of AWS resources to evaluate
  /// [triggerTypes] List of notification types that trigger AWS Config to run an evaluation for the rule. Valid values: `ConfigurationItemChangeNotification`, `OversizedConfigurationItemChangeNotification`, and `ScheduledNotification`
  OrganizationCustomRuleArgs({
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? excludedAccounts,
    pulumi.Output<String>? inputParameters,
    required pulumi.Output<String> lambdaFunctionArn,
    pulumi.Output<String>? maximumExecutionFrequency,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceIdScope,
    pulumi.Output<List<String>>? resourceTypesScopes,
    pulumi.Output<String>? tagKeyScope,
    pulumi.Output<String>? tagValueScope,
    required pulumi.Output<List<String>> triggerTypes,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      excludedAccounts = pulumi.Input.asOptionalInput<List<String>>(excludedAccounts),
      inputParameters = pulumi.Input.asOptionalInput<String>(inputParameters),
      lambdaFunctionArn = pulumi.Input.asInput<String>(lambdaFunctionArn),
      maximumExecutionFrequency = pulumi.Input.asOptionalInput<String>(maximumExecutionFrequency),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceIdScope = pulumi.Input.asOptionalInput<String>(resourceIdScope),
      resourceTypesScopes = pulumi.Input.asOptionalInput<List<String>>(resourceTypesScopes),
      tagKeyScope = pulumi.Input.asOptionalInput<String>(tagKeyScope),
      tagValueScope = pulumi.Input.asOptionalInput<String>(tagValueScope),
      triggerTypes = pulumi.Input.asInput<List<String>>(triggerTypes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'excludedAccounts': ?excludedAccounts,
      'inputParameters': ?inputParameters,
      'lambdaFunctionArn': lambdaFunctionArn,
      'maximumExecutionFrequency': ?maximumExecutionFrequency,
      'name': ?name,
      'region': ?region,
      'resourceIdScope': ?resourceIdScope,
      'resourceTypesScopes': ?resourceTypesScopes,
      'tagKeyScope': ?tagKeyScope,
      'tagValueScope': ?tagValueScope,
      'triggerTypes': triggerTypes,
    };
  }

  factory OrganizationCustomRuleArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationCustomRuleArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      excludedAccounts: map['excludedAccounts'] == null ? null : pulumi.Output.create<List<String>>((map['excludedAccounts'] as List).cast<String>()),
      inputParameters: map['inputParameters'] == null ? null : pulumi.Output.create<String>(map['inputParameters'] as String),
      lambdaFunctionArn: pulumi.Output.create<String>(map['lambdaFunctionArn'] as String),
      maximumExecutionFrequency: map['maximumExecutionFrequency'] == null ? null : pulumi.Output.create<String>(map['maximumExecutionFrequency'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceIdScope: map['resourceIdScope'] == null ? null : pulumi.Output.create<String>(map['resourceIdScope'] as String),
      resourceTypesScopes: map['resourceTypesScopes'] == null ? null : pulumi.Output.create<List<String>>((map['resourceTypesScopes'] as List).cast<String>()),
      tagKeyScope: map['tagKeyScope'] == null ? null : pulumi.Output.create<String>(map['tagKeyScope'] as String),
      tagValueScope: map['tagValueScope'] == null ? null : pulumi.Output.create<String>(map['tagValueScope'] as String),
      triggerTypes: pulumi.Output.create<List<String>>((map['triggerTypes'] as List).cast<String>()),
    );
  }
}

