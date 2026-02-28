// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_organization_custom_policy_rule_organization_custom_policy_rule_args_doc}
/// The set of arguments for OrganizationCustomPolicyRule.
/// {@endtemplate}
/// {@macro pulumi_cfg_organization_custom_policy_rule_organization_custom_policy_rule_args_doc}
class OrganizationCustomPolicyRuleArgs {
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
  final pulumi.Input<String> policyRuntime;

  /// Policy definition containing the rule logic.
  final pulumi.Input<String> policyText;

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
  final pulumi.Input<List<String>> triggerTypes;

  /// Creates a new [OrganizationCustomPolicyRuleArgs].
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
  OrganizationCustomPolicyRuleArgs({
    List<String>? debugLogDeliveryAccounts,
    String? description,
    List<String>? excludedAccounts,
    String? inputParameters,
    String? maximumExecutionFrequency,
    String? name,
    required String policyRuntime,
    required String policyText,
    String? region,
    String? resourceIdScope,
    List<String>? resourceTypesScopes,
    String? tagKeyScope,
    String? tagValueScope,
    required List<String> triggerTypes,
  })  : debugLogDeliveryAccounts = pulumi.Input.asOptionalInput<List<String>>(
            debugLogDeliveryAccounts),
        description = pulumi.Input.asOptionalInput<String>(description),
        excludedAccounts =
            pulumi.Input.asOptionalInput<List<String>>(excludedAccounts),
        inputParameters = pulumi.Input.asOptionalInput<String>(inputParameters),
        maximumExecutionFrequency =
            pulumi.Input.asOptionalInput<String>(maximumExecutionFrequency),
        name = pulumi.Input.asOptionalInput<String>(name),
        policyRuntime = pulumi.Input.asInput<String>(policyRuntime),
        policyText = pulumi.Input.asInput<String>(policyText),
        region = pulumi.Input.asOptionalInput<String>(region),
        resourceIdScope = pulumi.Input.asOptionalInput<String>(resourceIdScope),
        resourceTypesScopes =
            pulumi.Input.asOptionalInput<List<String>>(resourceTypesScopes),
        tagKeyScope = pulumi.Input.asOptionalInput<String>(tagKeyScope),
        tagValueScope = pulumi.Input.asOptionalInput<String>(tagValueScope),
        triggerTypes = pulumi.Input.asInput<List<String>>(triggerTypes);

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
      debugLogDeliveryAccounts: map['debugLogDeliveryAccounts'] == null
          ? null
          : (map['debugLogDeliveryAccounts'] as List).cast<String>(),
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
      policyRuntime: map['policyRuntime'] as String,
      policyText: map['policyText'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceIdScope: map['resourceIdScope'] == null
          ? null
          : map['resourceIdScope'] as String,
      resourceTypesScopes: map['resourceTypesScopes'] == null
          ? null
          : (map['resourceTypesScopes'] as List).cast<String>(),
      tagKeyScope:
          map['tagKeyScope'] == null ? null : map['tagKeyScope'] as String,
      tagValueScope:
          map['tagValueScope'] == null ? null : map['tagValueScope'] as String,
      triggerTypes: (map['triggerTypes'] as List).cast<String>(),
    );
  }
}
