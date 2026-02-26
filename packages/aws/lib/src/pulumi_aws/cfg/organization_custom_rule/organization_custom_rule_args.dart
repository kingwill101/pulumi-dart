// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for OrganizationCustomRule.
class OrganizationCustomRuleArgs {
  /// Description of the rule
  final Input<String>? description;

  /// List of AWS account identifiers to exclude from the rule
  final Input<List<String>>? excludedAccounts;

  /// A string in JSON format that is passed to the AWS Config Rule Lambda Function
  final Input<String>? inputParameters;

  /// Amazon Resource Name (ARN) of the rule Lambda Function
  final Input<String> lambdaFunctionArn;

  /// The maximum frequency with which AWS Config runs evaluations for a rule, if the rule is triggered at a periodic frequency. Defaults to `TwentyFour_Hours` for periodic frequency triggered rules. Valid values: `One_Hour`, `Three_Hours`, `Six_Hours`, `Twelve_Hours`, or `TwentyFour_Hours`.
  final Input<String>? maximumExecutionFrequency;

  /// The name of the rule
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Identifier of the AWS resource to evaluate
  final Input<String>? resourceIdScope;

  /// List of types of AWS resources to evaluate
  final Input<List<String>>? resourceTypesScopes;

  /// Tag key of AWS resources to evaluate
  final Input<String>? tagKeyScope;

  /// Tag value of AWS resources to evaluate
  final Input<String>? tagValueScope;

  /// List of notification types that trigger AWS Config to run an evaluation for the rule. Valid values: `ConfigurationItemChangeNotification`, `OversizedConfigurationItemChangeNotification`, and `ScheduledNotification`
  final Input<List<String>> triggerTypes;

  OrganizationCustomRuleArgs({
    this.description,
    this.excludedAccounts,
    this.inputParameters,
    required this.lambdaFunctionArn,
    this.maximumExecutionFrequency,
    this.name,
    this.region,
    this.resourceIdScope,
    this.resourceTypesScopes,
    this.tagKeyScope,
    this.tagValueScope,
    required this.triggerTypes,
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
    map['lambdaFunctionArn'] = lambdaFunctionArn;
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
    final tagKeyScopeValue = tagKeyScope;
    if (tagKeyScopeValue != null) {
      map['tagKeyScope'] = tagKeyScopeValue;
    }
    final tagValueScopeValue = tagValueScope;
    if (tagValueScopeValue != null) {
      map['tagValueScope'] = tagValueScopeValue;
    }
    map['triggerTypes'] = triggerTypes;
    return map;
  }

  factory OrganizationCustomRuleArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationCustomRuleArgs(
      description: Input.asOptionalInput<String>(map['description']),
      excludedAccounts:
          Input.asOptionalInput<List<String>>(map['excludedAccounts']),
      inputParameters: Input.asOptionalInput<String>(map['inputParameters']),
      lambdaFunctionArn: Input.asInput<String>(map['lambdaFunctionArn']),
      maximumExecutionFrequency:
          Input.asOptionalInput<String>(map['maximumExecutionFrequency']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceIdScope: Input.asOptionalInput<String>(map['resourceIdScope']),
      resourceTypesScopes:
          Input.asOptionalInput<List<String>>(map['resourceTypesScopes']),
      tagKeyScope: Input.asOptionalInput<String>(map['tagKeyScope']),
      tagValueScope: Input.asOptionalInput<String>(map['tagValueScope']),
      triggerTypes: Input.asInput<List<String>>(map['triggerTypes']),
    );
  }
}
