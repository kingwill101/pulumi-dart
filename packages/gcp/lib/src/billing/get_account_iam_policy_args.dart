// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billing_get_account_iam_policy_get_account_iam_policy_args_doc}
/// Arguments for getAccountIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_billing_get_account_iam_policy_get_account_iam_policy_args_doc}
class GetAccountIamPolicyArgs {
  /// The billing account id.
  final pulumi.Input<String> billingAccountId;

  /// Creates a new [GetAccountIamPolicyArgs].
  /// [billingAccountId] The billing account id.
  GetAccountIamPolicyArgs({
    required String billingAccountId,
  }) : billingAccountId = pulumi.Input.asInput<String>(billingAccountId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccountId'] = billingAccountId;
    return map;
  }

  factory GetAccountIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountIamPolicyArgs(
      billingAccountId: map['billingAccountId'] as String,
    );
  }
}
