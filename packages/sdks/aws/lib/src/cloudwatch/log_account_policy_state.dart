// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogAccountPolicy resources.
class LogAccountPolicyState {
  /// Text of the account policy. Refer to the [AWS docs](https://docs.aws.amazon.com/cli/latest/reference/logs/put-account-policy.html) for more information.
  final pulumi.Input<String>? policyDocument;
  /// Name of the account policy.
  final pulumi.Input<String>? policyName;
  /// Type of account policy. One of `DATA_PROTECTION_POLICY`, `SUBSCRIPTION_FILTER_POLICY`, `FIELD_INDEX_POLICY` or `TRANSFORMER_POLICY`. You can have one account policy per type in an account.
  final pulumi.Input<String>? policyType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Currently defaults to and only accepts the value: `ALL`.
  final pulumi.Input<String>? scope;
  /// Criteria for applying a subscription filter policy to a selection of log groups. The only allowable criteria selector is `LogGroupName NOT IN []`.
  final pulumi.Input<String>? selectionCriteria;

  /// Creates a new [LogAccountPolicyState].
  /// [policyDocument] Text of the account policy. Refer to the [AWS docs](https://docs.aws.amazon.com/cli/latest/reference/logs/put-account-policy.html) for more information.
  /// [policyName] Name of the account policy.
  /// [policyType] Type of account policy. One of `DATA_PROTECTION_POLICY`, `SUBSCRIPTION_FILTER_POLICY`, `FIELD_INDEX_POLICY` or `TRANSFORMER_POLICY`. You can have one account policy per type in an account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scope] Currently defaults to and only accepts the value: `ALL`.
  /// [selectionCriteria] Criteria for applying a subscription filter policy to a selection of log groups. The only allowable criteria selector is `LogGroupName NOT IN []`.
  LogAccountPolicyState({
    this.policyDocument,
    this.policyName,
    this.policyType,
    this.region,
    this.scope,
    this.selectionCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyDocument': ?policyDocument,
      'policyName': ?policyName,
      'policyType': ?policyType,
      'region': ?region,
      'scope': ?scope,
      'selectionCriteria': ?selectionCriteria,
    };
  }

  factory LogAccountPolicyState.fromMap(Map<String, dynamic> map) {
    return LogAccountPolicyState(
      policyDocument: map['policyDocument'] == null ? null : (map['policyDocument'] as String).input(),
      policyName: map['policyName'] == null ? null : (map['policyName'] as String).input(),
      policyType: map['policyType'] == null ? null : (map['policyType'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
      selectionCriteria: map['selectionCriteria'] == null ? null : (map['selectionCriteria'] as String).input(),
    );
  }
}

