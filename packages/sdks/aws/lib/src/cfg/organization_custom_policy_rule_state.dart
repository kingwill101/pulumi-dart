// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OrganizationCustomPolicyRule resources.
class OrganizationCustomPolicyRuleState {
  /// Amazon Resource Name (ARN) of the rule.
  final pulumi.Input<String>? arn;
  /// List of accounts that you can enable debug logging for. The list is null when debug logging is enabled for all accounts.
  final pulumi.Input<List<String>>? debugLogDeliveryAccounts;
  /// Description of the rule.
  final pulumi.Input<String>? description;
  /// List of AWS account identifiers to exclude from the rule.
  final pulumi.Input<List<String>>? excludedAccounts;
  /// A string in JSON format that is passed to the AWS Config Rule Lambda Function.
  final pulumi.Input<String>? inputParameters;
  /// Maximum frequency with which AWS Config runs evaluations for a rule, if the rule is triggered at a periodic frequency. Defaults to `TwentyFour_Hours` for periodic frequency triggered rules. Valid values: `One_Hour`, `Three_Hours`, `Six_Hours`, `Twelve_Hours`, or `TwentyFour_Hours`.
  final pulumi.Input<String>? maximumExecutionFrequency;
  /// Name of the rule.
  final pulumi.Input<String>? name;
  /// Runtime system for policy rules.
  final pulumi.Input<String>? policyRuntime;
  /// Policy definition containing the rule logic.
  final pulumi.Input<String>? policyText;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of the AWS resource to evaluate.
  final pulumi.Input<String>? resourceIdScope;
  /// List of types of AWS resources to evaluate.
  final pulumi.Input<List<String>>? resourceTypesScopes;
  /// Tag key of AWS resources to evaluate.
  final pulumi.Input<String>? tagKeyScope;
  /// Tag value of AWS resources to evaluate.
  final pulumi.Input<String>? tagValueScope;
  /// List of notification types that trigger AWS Config to run an evaluation for the rule. Valid values: `ConfigurationItemChangeNotification`, `OversizedConfigurationItemChangeNotification`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>>? triggerTypes;

  /// Creates a new [OrganizationCustomPolicyRuleState].
  /// [arn] Amazon Resource Name (ARN) of the rule.
  /// [debugLogDeliveryAccounts] List of accounts that you can enable debug logging for. The list is null when debug logging is enabled for all accounts.
  /// [description] Description of the rule.
  /// [excludedAccounts] List of AWS account identifiers to exclude from the rule.
  /// [inputParameters] A string in JSON format that is passed to the AWS Config Rule Lambda Function.
  /// [maximumExecutionFrequency] Maximum frequency with which AWS Config runs evaluations for a rule, if the rule is triggered at a periodic frequency. Defaults to `TwentyFour_Hours` for periodic frequency triggered rules. Valid values: `One_Hour`, `Three_Hours`, `Six_Hours`, `Twelve_Hours`, or `TwentyFour_Hours`.
  /// [name] Name of the rule.
  /// [policyRuntime] Runtime system for policy rules.
  /// [policyText] Policy definition containing the rule logic.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceIdScope] Identifier of the AWS resource to evaluate.
  /// [resourceTypesScopes] List of types of AWS resources to evaluate.
  /// [tagKeyScope] Tag key of AWS resources to evaluate.
  /// [tagValueScope] Tag value of AWS resources to evaluate.
  /// [triggerTypes] List of notification types that trigger AWS Config to run an evaluation for the rule. Valid values: `ConfigurationItemChangeNotification`, `OversizedConfigurationItemChangeNotification`.
  OrganizationCustomPolicyRuleState({
    pulumi.Output<String>? arn,
    pulumi.Output<List<String>>? debugLogDeliveryAccounts,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? excludedAccounts,
    pulumi.Output<String>? inputParameters,
    pulumi.Output<String>? maximumExecutionFrequency,
    pulumi.Output<String>? name,
    pulumi.Output<String>? policyRuntime,
    pulumi.Output<String>? policyText,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceIdScope,
    pulumi.Output<List<String>>? resourceTypesScopes,
    pulumi.Output<String>? tagKeyScope,
    pulumi.Output<String>? tagValueScope,
    pulumi.Output<List<String>>? triggerTypes,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      debugLogDeliveryAccounts = pulumi.Input.asOptionalInput<List<String>>(debugLogDeliveryAccounts),
      description = pulumi.Input.asOptionalInput<String>(description),
      excludedAccounts = pulumi.Input.asOptionalInput<List<String>>(excludedAccounts),
      inputParameters = pulumi.Input.asOptionalInput<String>(inputParameters),
      maximumExecutionFrequency = pulumi.Input.asOptionalInput<String>(maximumExecutionFrequency),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyRuntime = pulumi.Input.asOptionalInput<String>(policyRuntime),
      policyText = pulumi.Input.asOptionalInput<String>(policyText),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceIdScope = pulumi.Input.asOptionalInput<String>(resourceIdScope),
      resourceTypesScopes = pulumi.Input.asOptionalInput<List<String>>(resourceTypesScopes),
      tagKeyScope = pulumi.Input.asOptionalInput<String>(tagKeyScope),
      tagValueScope = pulumi.Input.asOptionalInput<String>(tagValueScope),
      triggerTypes = pulumi.Input.asOptionalInput<List<String>>(triggerTypes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'debugLogDeliveryAccounts': ?debugLogDeliveryAccounts,
      'description': ?description,
      'excludedAccounts': ?excludedAccounts,
      'inputParameters': ?inputParameters,
      'maximumExecutionFrequency': ?maximumExecutionFrequency,
      'name': ?name,
      'policyRuntime': ?policyRuntime,
      'policyText': ?policyText,
      'region': ?region,
      'resourceIdScope': ?resourceIdScope,
      'resourceTypesScopes': ?resourceTypesScopes,
      'tagKeyScope': ?tagKeyScope,
      'tagValueScope': ?tagValueScope,
      'triggerTypes': ?triggerTypes,
    };
  }

  factory OrganizationCustomPolicyRuleState.fromMap(Map<String, dynamic> map) {
    return OrganizationCustomPolicyRuleState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      debugLogDeliveryAccounts: map['debugLogDeliveryAccounts'] == null ? null : pulumi.Output.create<List<String>>((map['debugLogDeliveryAccounts'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      excludedAccounts: map['excludedAccounts'] == null ? null : pulumi.Output.create<List<String>>((map['excludedAccounts'] as List).cast<String>()),
      inputParameters: map['inputParameters'] == null ? null : pulumi.Output.create<String>(map['inputParameters'] as String),
      maximumExecutionFrequency: map['maximumExecutionFrequency'] == null ? null : pulumi.Output.create<String>(map['maximumExecutionFrequency'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyRuntime: map['policyRuntime'] == null ? null : pulumi.Output.create<String>(map['policyRuntime'] as String),
      policyText: map['policyText'] == null ? null : pulumi.Output.create<String>(map['policyText'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceIdScope: map['resourceIdScope'] == null ? null : pulumi.Output.create<String>(map['resourceIdScope'] as String),
      resourceTypesScopes: map['resourceTypesScopes'] == null ? null : pulumi.Output.create<List<String>>((map['resourceTypesScopes'] as List).cast<String>()),
      tagKeyScope: map['tagKeyScope'] == null ? null : pulumi.Output.create<String>(map['tagKeyScope'] as String),
      tagValueScope: map['tagValueScope'] == null ? null : pulumi.Output.create<String>(map['tagValueScope'] as String),
      triggerTypes: map['triggerTypes'] == null ? null : pulumi.Output.create<List<String>>((map['triggerTypes'] as List).cast<String>()),
    );
  }
}

