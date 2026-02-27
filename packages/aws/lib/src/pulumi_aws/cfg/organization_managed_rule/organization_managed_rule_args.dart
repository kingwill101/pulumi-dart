// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for OrganizationManagedRule.
class OrganizationManagedRuleArgs {
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
  final pulumi.Input<String> ruleIdentifier;

  /// Tag key of AWS resources to evaluate
  final pulumi.Input<String>? tagKeyScope;

  /// Tag value of AWS resources to evaluate
  final pulumi.Input<String>? tagValueScope;

  OrganizationManagedRuleArgs({
    this.description,
    this.excludedAccounts,
    this.inputParameters,
    this.maximumExecutionFrequency,
    this.name,
    this.region,
    this.resourceIdScope,
    this.resourceTypesScopes,
    required this.ruleIdentifier,
    this.tagKeyScope,
    this.tagValueScope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final excludedAccountsValue = excludedAccounts;
    if (excludedAccountsValue != null) {
      map['excludedAccounts'] = excludedAccountsValue;
    }
    final inputParametersValue = inputParameters;
    if (inputParametersValue != null) {
      map['inputParameters'] = inputParametersValue;
    }
    final maximumExecutionFrequencyValue = maximumExecutionFrequency;
    if (maximumExecutionFrequencyValue != null) {
      map['maximumExecutionFrequency'] = maximumExecutionFrequencyValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceIdScopeValue = resourceIdScope;
    if (resourceIdScopeValue != null) {
      map['resourceIdScope'] = resourceIdScopeValue;
    }
    final resourceTypesScopesValue = resourceTypesScopes;
    if (resourceTypesScopesValue != null) {
      map['resourceTypesScopes'] = resourceTypesScopesValue;
    }
    map['ruleIdentifier'] = ruleIdentifier;
    final tagKeyScopeValue = tagKeyScope;
    if (tagKeyScopeValue != null) {
      map['tagKeyScope'] = tagKeyScopeValue;
    }
    final tagValueScopeValue = tagValueScope;
    if (tagValueScopeValue != null) {
      map['tagValueScope'] = tagValueScopeValue;
    }
    return map;
  }

  factory OrganizationManagedRuleArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationManagedRuleArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      excludedAccounts:
          pulumi.Input.asOptionalInput<List<String>>(map['excludedAccounts']),
      inputParameters:
          pulumi.Input.asOptionalInput<String>(map['inputParameters']),
      maximumExecutionFrequency: pulumi.Input.asOptionalInput<String>(
          map['maximumExecutionFrequency']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceIdScope:
          pulumi.Input.asOptionalInput<String>(map['resourceIdScope']),
      resourceTypesScopes: pulumi.Input.asOptionalInput<List<String>>(
          map['resourceTypesScopes']),
      ruleIdentifier: pulumi.Input.asInput<String>(map['ruleIdentifier']),
      tagKeyScope: pulumi.Input.asOptionalInput<String>(map['tagKeyScope']),
      tagValueScope: pulumi.Input.asOptionalInput<String>(map['tagValueScope']),
    );
  }
}
