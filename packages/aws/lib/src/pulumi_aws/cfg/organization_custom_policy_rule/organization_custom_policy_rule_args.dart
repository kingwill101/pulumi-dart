// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for OrganizationCustomPolicyRule.
class OrganizationCustomPolicyRuleArgs {
  /// List of accounts that you can enable debug logging for. The list is null when debug logging is enabled for all accounts.
  final Input<List<String>>? debugLogDeliveryAccounts;

  /// Description of the rule.
  final Input<String>? description;

  /// List of AWS account identifiers to exclude from the rule.
  final Input<List<String>>? excludedAccounts;

  /// A string in JSON format that is passed to the AWS Config Rule Lambda Function.
  final Input<String>? inputParameters;

  /// Maximum frequency with which AWS Config runs evaluations for a rule, if the rule is triggered at a periodic frequency. Defaults to `TwentyFour_Hours` for periodic frequency triggered rules. Valid values: `One_Hour`, `Three_Hours`, `Six_Hours`, `Twelve_Hours`, or `TwentyFour_Hours`.
  final Input<String>? maximumExecutionFrequency;

  /// Name of the rule.
  final Input<String>? name;

  /// Runtime system for policy rules.
  final Input<String> policyRuntime;

  /// Policy definition containing the rule logic.
  final Input<String> policyText;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Identifier of the AWS resource to evaluate.
  final Input<String>? resourceIdScope;

  /// List of types of AWS resources to evaluate.
  final Input<List<String>>? resourceTypesScopes;

  /// Tag key of AWS resources to evaluate.
  final Input<String>? tagKeyScope;

  /// Tag value of AWS resources to evaluate.
  final Input<String>? tagValueScope;

  /// List of notification types that trigger AWS Config to run an evaluation for the rule. Valid values: `ConfigurationItemChangeNotification`, `OversizedConfigurationItemChangeNotification`.
  ///
  /// The following arguments are optional:
  final Input<List<String>> triggerTypes;

  OrganizationCustomPolicyRuleArgs({
    this.debugLogDeliveryAccounts,
    this.description,
    this.excludedAccounts,
    this.inputParameters,
    this.maximumExecutionFrequency,
    this.name,
    required this.policyRuntime,
    required this.policyText,
    this.region,
    this.resourceIdScope,
    this.resourceTypesScopes,
    this.tagKeyScope,
    this.tagValueScope,
    required this.triggerTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final debugLogDeliveryAccountsValue = debugLogDeliveryAccounts;
    if (debugLogDeliveryAccountsValue != null) {
      map['debugLogDeliveryAccounts'] = debugLogDeliveryAccountsValue;
    }
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
    map['policyRuntime'] = policyRuntime;
    map['policyText'] = policyText;
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

  factory OrganizationCustomPolicyRuleArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationCustomPolicyRuleArgs(
      debugLogDeliveryAccounts:
          Input.asOptionalInput<List<String>>(map['debugLogDeliveryAccounts']),
      description: Input.asOptionalInput<String>(map['description']),
      excludedAccounts:
          Input.asOptionalInput<List<String>>(map['excludedAccounts']),
      inputParameters: Input.asOptionalInput<String>(map['inputParameters']),
      maximumExecutionFrequency:
          Input.asOptionalInput<String>(map['maximumExecutionFrequency']),
      name: Input.asOptionalInput<String>(map['name']),
      policyRuntime: Input.asInput<String>(map['policyRuntime']),
      policyText: Input.asInput<String>(map['policyText']),
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
