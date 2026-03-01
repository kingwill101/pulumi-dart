// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_iam_member_condition.dart';

/// {@template pulumi_billing_account_iam_member_account_iam_member_args_doc}
/// The set of arguments for AccountIamMember.
/// {@endtemplate}
/// {@macro pulumi_billing_account_iam_member_account_iam_member_args_doc}
class AccountIamMemberArgs {
  /// The billing account id.
  ///
  /// For `gcp.billing.AccountIamMember` or `gcp.billing.AccountIamBinding`:
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<AccountIamMemberCondition>? condition;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String> member;

  /// The role that should be applied. Only one
  /// `gcp.billing.AccountIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`. Read more about roles [here](https://cloud.google.com/bigtable/docs/access-control#roles).
  ///
  /// `gcp.billing.AccountIamPolicy` only:
  final pulumi.Input<String> role;

  /// Creates a new [AccountIamMemberArgs].
  /// [billingAccountId] The billing account id.
  /// [condition] Optional.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  AccountIamMemberArgs({
    required String billingAccountId,
    AccountIamMemberCondition? condition,
    required String member,
    required String role,
  }) : billingAccountId = pulumi.Input.asInput<String>(billingAccountId),
       condition = pulumi.Input.asOptionalInput<AccountIamMemberCondition>(
         condition,
       ),
       member = pulumi.Input.asInput<String>(member),
       role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'condition':
          ?pulumi.Input.mapOptionalInputValue<
            AccountIamMemberCondition,
            Map<String, dynamic>
          >(condition, (value) => value.toMap()),
      'member': member,
      'role': role,
    };
  }

  factory AccountIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return AccountIamMemberArgs(
      billingAccountId: map['billingAccountId'] as String,
      condition: map['condition'] == null
          ? null
          : AccountIamMemberCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>(),
            ),
      member: map['member'] as String,
      role: map['role'] as String,
    );
  }
}
