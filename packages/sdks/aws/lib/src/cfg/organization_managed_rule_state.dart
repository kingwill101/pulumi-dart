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
    this.arn,
    this.description,
    this.excludedAccounts,
    this.inputParameters,
    this.maximumExecutionFrequency,
    this.name,
    this.region,
    this.resourceIdScope,
    this.resourceTypesScopes,
    this.ruleIdentifier,
    this.tagKeyScope,
    this.tagValueScope,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      excludedAccounts: map['excludedAccounts'] == null ? null : (((map['excludedAccounts'] as List).cast<String>()).input()).input(),
      inputParameters: map['inputParameters'] == null ? null : ((map['inputParameters'] as String).input()).input(),
      maximumExecutionFrequency: map['maximumExecutionFrequency'] == null ? null : ((map['maximumExecutionFrequency'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceIdScope: map['resourceIdScope'] == null ? null : ((map['resourceIdScope'] as String).input()).input(),
      resourceTypesScopes: map['resourceTypesScopes'] == null ? null : (((map['resourceTypesScopes'] as List).cast<String>()).input()).input(),
      ruleIdentifier: map['ruleIdentifier'] == null ? null : ((map['ruleIdentifier'] as String).input()).input(),
      tagKeyScope: map['tagKeyScope'] == null ? null : ((map['tagKeyScope'] as String).input()).input(),
      tagValueScope: map['tagValueScope'] == null ? null : ((map['tagValueScope'] as String).input()).input(),
    );
  }
}

