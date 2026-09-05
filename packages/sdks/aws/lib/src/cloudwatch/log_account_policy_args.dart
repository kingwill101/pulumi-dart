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
  final pulumi.Input<String?>? region;
  /// Currently defaults to and only accepts the value: `ALL`.
  final pulumi.Input<String?>? scope;
  /// Criteria for applying a subscription filter policy to a selection of log groups. The only allowable criteria selector is `LogGroupName NOT IN []`.
  final pulumi.Input<String?>? selectionCriteria;

  /// Creates a new [LogAccountPolicyArgs].
  /// [policyDocument] Text of the account policy. Refer to the [AWS docs](https://docs.aws.amazon.com/cli/latest/reference/logs/put-account-policy.html) for more information.
  /// [policyName] Name of the account policy.
  /// [policyType] Type of account policy. One of `DATA_PROTECTION_POLICY`, `SUBSCRIPTION_FILTER_POLICY`, `FIELD_INDEX_POLICY` or `TRANSFORMER_POLICY`. You can have one account policy per type in an account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scope] Currently defaults to and only accepts the value: `ALL`.
  /// [selectionCriteria] Criteria for applying a subscription filter policy to a selection of log groups. The only allowable criteria selector is `LogGroupName NOT IN []`.
  const LogAccountPolicyArgs({
    required this.policyDocument,
    required this.policyName,
    required this.policyType,
    this.region,
    this.scope,
    this.selectionCriteria,
  });

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
      policyDocument: pulumi.Input.fromValue(map['policyDocument'] as String),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      policyType: pulumi.Input.fromValue(map['policyType'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectionCriteria: (() { final guardedValue = map['selectionCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
