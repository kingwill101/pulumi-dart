// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_organization_managed_rule_organization_managed_rule_args_doc}
/// The set of arguments for OrganizationManagedRule.
/// {@endtemplate}
/// {@macro pulumi_cfg_organization_managed_rule_organization_managed_rule_args_doc}
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

  /// Creates a new [OrganizationManagedRuleArgs].
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
  OrganizationManagedRuleArgs({
    String? description,
    List<String>? excludedAccounts,
    String? inputParameters,
    String? maximumExecutionFrequency,
    String? name,
    String? region,
    String? resourceIdScope,
    List<String>? resourceTypesScopes,
    required String ruleIdentifier,
    String? tagKeyScope,
    String? tagValueScope,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        excludedAccounts =
            pulumi.Input.asOptionalInput<List<String>>(excludedAccounts),
        inputParameters = pulumi.Input.asOptionalInput<String>(inputParameters),
        maximumExecutionFrequency =
            pulumi.Input.asOptionalInput<String>(maximumExecutionFrequency),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        resourceIdScope = pulumi.Input.asOptionalInput<String>(resourceIdScope),
        resourceTypesScopes =
            pulumi.Input.asOptionalInput<List<String>>(resourceTypesScopes),
        ruleIdentifier = pulumi.Input.asInput<String>(ruleIdentifier),
        tagKeyScope = pulumi.Input.asOptionalInput<String>(tagKeyScope),
        tagValueScope = pulumi.Input.asOptionalInput<String>(tagValueScope);

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
      description:
          map['description'] == null ? null : map['description'] as String,
      excludedAccounts: map['excludedAccounts'] == null
          ? null
          : (map['excludedAccounts'] as List).cast<String>(),
      inputParameters: map['inputParameters'] == null
          ? null
          : map['inputParameters'] as String,
      maximumExecutionFrequency: map['maximumExecutionFrequency'] == null
          ? null
          : map['maximumExecutionFrequency'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceIdScope: map['resourceIdScope'] == null
          ? null
          : map['resourceIdScope'] as String,
      resourceTypesScopes: map['resourceTypesScopes'] == null
          ? null
          : (map['resourceTypesScopes'] as List).cast<String>(),
      ruleIdentifier: map['ruleIdentifier'] as String,
      tagKeyScope:
          map['tagKeyScope'] == null ? null : map['tagKeyScope'] as String,
      tagValueScope:
          map['tagValueScope'] == null ? null : map['tagValueScope'] as String,
    );
  }
}
