// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OrganizationManagedRule resources.
class OrganizationManagedRuleState {
  /// Amazon Resource Name (ARN) of the rule
  final pulumi.Input<String>? arn;
  /// Description of the rule
  final pulumi.Input<String>? description;
  /// List of AWS account identifiers to exclude from the rule
  final pulumi.Input<List<String>>? excludedAccounts;
  /// A string in JSON format that is passed to the AWS Config Rule Lambda Function
  final pulumi.Input<String>? inputParameters;
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
  /// Identifier of an available AWS Config Managed Rule to call. For available values, see the [List of AWS Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html) documentation
  final pulumi.Input<String>? ruleIdentifier;
  /// Tag key of AWS resources to evaluate
  final pulumi.Input<String>? tagKeyScope;
  /// Tag value of AWS resources to evaluate
  final pulumi.Input<String>? tagValueScope;

  /// Creates a new [OrganizationManagedRuleState].
  /// [arn] Amazon Resource Name (ARN) of the rule
  /// [description] Description of the rule
  /// [excludedAccounts] List of AWS account identifiers to exclude from the rule
  /// [inputParameters] A string in JSON format that is passed to the AWS Config Rule Lambda Function
  /// [maximumExecutionFrequency] The maximum frequency with which AWS Config runs evaluations for a rule, if the rule is triggered at a periodic frequency. Defaults to `TwentyFour_Hours` for periodic frequency triggered rules. Valid values: `One_Hour`, `Three_Hours`, `Six_Hours`, `Twelve_Hours`, or `TwentyFour_Hours`.
  /// [name] The name of the rule
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceIdScope] Identifier of the AWS resource to evaluate
  /// [resourceTypesScopes] List of types of AWS resources to evaluate
  /// [ruleIdentifier] Identifier of an available AWS Config Managed Rule to call. For available values, see the [List of AWS Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html) documentation
  /// [tagKeyScope] Tag key of AWS resources to evaluate
  /// [tagValueScope] Tag value of AWS resources to evaluate
  OrganizationManagedRuleState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? excludedAccounts,
    pulumi.Output<String>? inputParameters,
    pulumi.Output<String>? maximumExecutionFrequency,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceIdScope,
    pulumi.Output<List<String>>? resourceTypesScopes,
    pulumi.Output<String>? ruleIdentifier,
    pulumi.Output<String>? tagKeyScope,
    pulumi.Output<String>? tagValueScope,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      excludedAccounts = pulumi.Input.asOptionalInput<List<String>>(excludedAccounts),
      inputParameters = pulumi.Input.asOptionalInput<String>(inputParameters),
      maximumExecutionFrequency = pulumi.Input.asOptionalInput<String>(maximumExecutionFrequency),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceIdScope = pulumi.Input.asOptionalInput<String>(resourceIdScope),
      resourceTypesScopes = pulumi.Input.asOptionalInput<List<String>>(resourceTypesScopes),
      ruleIdentifier = pulumi.Input.asOptionalInput<String>(ruleIdentifier),
      tagKeyScope = pulumi.Input.asOptionalInput<String>(tagKeyScope),
      tagValueScope = pulumi.Input.asOptionalInput<String>(tagValueScope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'excludedAccounts': ?excludedAccounts,
      'inputParameters': ?inputParameters,
      'maximumExecutionFrequency': ?maximumExecutionFrequency,
      'name': ?name,
      'region': ?region,
      'resourceIdScope': ?resourceIdScope,
      'resourceTypesScopes': ?resourceTypesScopes,
      'ruleIdentifier': ?ruleIdentifier,
      'tagKeyScope': ?tagKeyScope,
      'tagValueScope': ?tagValueScope,
    };
  }

  factory OrganizationManagedRuleState.fromMap(Map<String, dynamic> map) {
    return OrganizationManagedRuleState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      excludedAccounts: map['excludedAccounts'] == null ? null : pulumi.Output.create<List<String>>((map['excludedAccounts'] as List).cast<String>()),
      inputParameters: map['inputParameters'] == null ? null : pulumi.Output.create<String>(map['inputParameters'] as String),
      maximumExecutionFrequency: map['maximumExecutionFrequency'] == null ? null : pulumi.Output.create<String>(map['maximumExecutionFrequency'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceIdScope: map['resourceIdScope'] == null ? null : pulumi.Output.create<String>(map['resourceIdScope'] as String),
      resourceTypesScopes: map['resourceTypesScopes'] == null ? null : pulumi.Output.create<List<String>>((map['resourceTypesScopes'] as List).cast<String>()),
      ruleIdentifier: map['ruleIdentifier'] == null ? null : pulumi.Output.create<String>(map['ruleIdentifier'] as String),
      tagKeyScope: map['tagKeyScope'] == null ? null : pulumi.Output.create<String>(map['tagKeyScope'] as String),
      tagValueScope: map['tagValueScope'] == null ? null : pulumi.Output.create<String>(map['tagValueScope'] as String),
    );
  }
}

