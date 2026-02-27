// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LogAccountPolicy.
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
      policyDocument: pulumi.Input.asInput<String>(map['policyDocument']),
      policyName: pulumi.Input.asInput<String>(map['policyName']),
      policyType: pulumi.Input.asInput<String>(map['policyType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scope: pulumi.Input.asOptionalInput<String>(map['scope']),
      selectionCriteria:
          pulumi.Input.asOptionalInput<String>(map['selectionCriteria']),
    );
  }
}
