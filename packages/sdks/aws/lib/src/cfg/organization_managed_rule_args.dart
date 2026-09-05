// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_organization_managed_rule_organization_managed_rule_args_doc}
/// The set of arguments for OrganizationManagedRule.
/// {@endtemplate}
/// {@macro pulumi_cfg_organization_managed_rule_organization_managed_rule_args_doc}
class OrganizationManagedRuleArgs {
  /// Description of the rule
  final pulumi.Input<String?>? description;
  /// List of AWS account identifiers to exclude from the rule
  final pulumi.Input<List<String>?>? excludedAccounts;
  /// A string in JSON format that is passed to the AWS Config Rule Lambda Function
  final pulumi.Input<String?>? inputParameters;
  /// The maximum frequency with which AWS Config runs evaluations for a rule, if the rule is triggered at a periodic frequency. Defaults to `TwentyFour_Hours` for periodic frequency triggered rules. Valid values: `One_Hour`, `Three_Hours`, `Six_Hours`, `Twelve_Hours`, or `TwentyFour_Hours`.
  final pulumi.Input<String?>? maximumExecutionFrequency;
  /// The name of the rule
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Identifier of the AWS resource to evaluate
  final pulumi.Input<String?>? resourceIdScope;
  /// List of types of AWS resources to evaluate
  final pulumi.Input<List<String>?>? resourceTypesScopes;
  /// Identifier of an available AWS Config Managed Rule to call. For available values, see the [List of AWS Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html) documentation
  final pulumi.Input<String> ruleIdentifier;
  /// Tag key of AWS resources to evaluate
  final pulumi.Input<String?>? tagKeyScope;
  /// Tag value of AWS resources to evaluate
  final pulumi.Input<String?>? tagValueScope;

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
  const OrganizationManagedRuleArgs({
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
    return <String, dynamic>{
      'description': ?description,
      'excludedAccounts': ?excludedAccounts,
      'inputParameters': ?inputParameters,
      'maximumExecutionFrequency': ?maximumExecutionFrequency,
      'name': ?name,
      'region': ?region,
      'resourceIdScope': ?resourceIdScope,
      'resourceTypesScopes': ?resourceTypesScopes,
      'ruleIdentifier': ruleIdentifier,
      'tagKeyScope': ?tagKeyScope,
      'tagValueScope': ?tagValueScope,
    };
  }

  factory OrganizationManagedRuleArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationManagedRuleArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludedAccounts: (() { final guardedValue = map['excludedAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      inputParameters: (() { final guardedValue = map['inputParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maximumExecutionFrequency: (() { final guardedValue = map['maximumExecutionFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceIdScope: (() { final guardedValue = map['resourceIdScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceTypesScopes: (() { final guardedValue = map['resourceTypesScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ruleIdentifier: pulumi.Input.fromValue(map['ruleIdentifier'] as String),
      tagKeyScope: (() { final guardedValue = map['tagKeyScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagValueScope: (() { final guardedValue = map['tagValueScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
