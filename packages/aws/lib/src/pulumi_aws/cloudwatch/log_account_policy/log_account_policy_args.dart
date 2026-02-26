// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LogAccountPolicy.
class LogAccountPolicyArgs {
  /// Text of the account policy. Refer to the [AWS docs](https://docs.aws.amazon.com/cli/latest/reference/logs/put-account-policy.html) for more information.
  final Input<String> policyDocument;

  /// Name of the account policy.
  final Input<String> policyName;

  /// Type of account policy. One of `DATA_PROTECTION_POLICY`, `SUBSCRIPTION_FILTER_POLICY`, `FIELD_INDEX_POLICY` or `TRANSFORMER_POLICY`. You can have one account policy per type in an account.
  final Input<String> policyType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Currently defaults to and only accepts the value: `ALL`.
  final Input<String>? scope;

  /// Criteria for applying a subscription filter policy to a selection of log groups. The only allowable criteria selector is `LogGroupName NOT IN []`.
  final Input<String>? selectionCriteria;

  LogAccountPolicyArgs({
    required this.policyDocument,
    required this.policyName,
    required this.policyType,
    this.region,
    this.scope,
    this.selectionCriteria,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyDocument'] = policyDocument;
    map['policyName'] = policyName;
    map['policyType'] = policyType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue;
    }
    final selectionCriteriaValue = selectionCriteria;
    if (selectionCriteriaValue != null) {
      map['selectionCriteria'] = selectionCriteriaValue;
    }
    return map;
  }

  factory LogAccountPolicyArgs.fromMap(Map<String, dynamic> map) {
    return LogAccountPolicyArgs(
      policyDocument: Input.asInput<String>(map['policyDocument']),
      policyName: Input.asInput<String>(map['policyName']),
      policyType: Input.asInput<String>(map['policyType']),
      region: Input.asOptionalInput<String>(map['region']),
      scope: Input.asOptionalInput<String>(map['scope']),
      selectionCriteria:
          Input.asOptionalInput<String>(map['selectionCriteria']),
    );
  }
}
