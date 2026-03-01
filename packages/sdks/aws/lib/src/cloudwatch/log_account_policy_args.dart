// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_log_account_policy_log_account_policy_args_doc}
/// The set of arguments for LogAccountPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_log_account_policy_log_account_policy_args_doc}
class LogAccountPolicyArgs {
  /// Text of the account policy. Refer to the [AWS docs](https://docs.aws.amazon.com/cli/latest/reference/logs/put-account-policy.html) for more information.
  final pulumi.Input<String> policyDocument;
  /// Name of the account policy.
  final pulumi.Input<String> policyName;
  /// Type of account policy. One of `DATA_PROTECTION_POLICY`, `SUBSCRIPTION_FILTER_POLICY`, `FIELD_INDEX_POLICY` or `TRANSFORMER_POLICY`. You can have one account policy per type in an account.
  final pulumi.Input<String> policyType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Currently defaults to and only accepts the value: `ALL`.
  final pulumi.Input<String>? scope;
  /// Criteria for applying a subscription filter policy to a selection of log groups. The only allowable criteria selector is `LogGroupName NOT IN []`.
  final pulumi.Input<String>? selectionCriteria;

  /// Creates a new [LogAccountPolicyArgs].
  /// [policyDocument] Text of the account policy. Refer to the [AWS docs](https://docs.aws.amazon.com/cli/latest/reference/logs/put-account-policy.html) for more information.
  /// [policyName] Name of the account policy.
  /// [policyType] Type of account policy. One of `DATA_PROTECTION_POLICY`, `SUBSCRIPTION_FILTER_POLICY`, `FIELD_INDEX_POLICY` or `TRANSFORMER_POLICY`. You can have one account policy per type in an account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scope] Currently defaults to and only accepts the value: `ALL`.
  /// [selectionCriteria] Criteria for applying a subscription filter policy to a selection of log groups. The only allowable criteria selector is `LogGroupName NOT IN []`.
  LogAccountPolicyArgs({
    required pulumi.Output<String> policyDocument,
    required pulumi.Output<String> policyName,
    required pulumi.Output<String> policyType,
    pulumi.Output<String>? region,
    pulumi.Output<String>? scope,
    pulumi.Output<String>? selectionCriteria,
  }) :
      policyDocument = pulumi.Input.asInput<String>(policyDocument),
      policyName = pulumi.Input.asInput<String>(policyName),
      policyType = pulumi.Input.asInput<String>(policyType),
      region = pulumi.Input.asOptionalInput<String>(region),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      selectionCriteria = pulumi.Input.asOptionalInput<String>(selectionCriteria);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyDocument': policyDocument,
      'policyName': policyName,
      'policyType': policyType,
      'region': ?region,
      'scope': ?scope,
      'selectionCriteria': ?selectionCriteria,
    };
  }

  factory LogAccountPolicyArgs.fromMap(Map<String, dynamic> map) {
    return LogAccountPolicyArgs(
      policyDocument: pulumi.Output.create<String>(map['policyDocument'] as String),
      policyName: pulumi.Output.create<String>(map['policyName'] as String),
      policyType: pulumi.Output.create<String>(map['policyType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      selectionCriteria: map['selectionCriteria'] == null ? null : pulumi.Output.create<String>(map['selectionCriteria'] as String),
    );
  }
}

