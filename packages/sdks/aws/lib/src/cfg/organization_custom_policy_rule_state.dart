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
    this.arn,
    this.debugLogDeliveryAccounts,
    this.description,
    this.excludedAccounts,
    this.inputParameters,
    this.maximumExecutionFrequency,
    this.name,
    this.policyRuntime,
    this.policyText,
    this.region,
    this.resourceIdScope,
    this.resourceTypesScopes,
    this.tagKeyScope,
    this.tagValueScope,
    this.triggerTypes,
  });

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
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      debugLogDeliveryAccounts: (() {
        final guardedValue = map['debugLogDeliveryAccounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      excludedAccounts: (() {
        final guardedValue = map['excludedAccounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      inputParameters: (() {
        final guardedValue = map['inputParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maximumExecutionFrequency: (() {
        final guardedValue = map['maximumExecutionFrequency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyRuntime: (() {
        final guardedValue = map['policyRuntime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyText: (() {
        final guardedValue = map['policyText'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceIdScope: (() {
        final guardedValue = map['resourceIdScope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceTypesScopes: (() {
        final guardedValue = map['resourceTypesScopes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tagKeyScope: (() {
        final guardedValue = map['tagKeyScope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tagValueScope: (() {
        final guardedValue = map['tagValueScope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      triggerTypes: (() {
        final guardedValue = map['triggerTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
