// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../account_iam_member_condition/account_iam_member_condition.dart';

/// The set of arguments for AccountIamMember.
class AccountIamMemberArgs {
  /// The billing account id.
  ///
  /// For <span pulumi-lang-nodejs="`gcp.billing.AccountIamMember`" pulumi-lang-dotnet="`gcp.billing.AccountIamMember`" pulumi-lang-go="`billing.AccountIamMember`" pulumi-lang-python="`billing.AccountIamMember`" pulumi-lang-yaml="`gcp.billing.AccountIamMember`" pulumi-lang-java="`gcp.billing.AccountIamMember`">`gcp.billing.AccountIamMember`</span> or <span pulumi-lang-nodejs="`gcp.billing.AccountIamBinding`" pulumi-lang-dotnet="`gcp.billing.AccountIamBinding`" pulumi-lang-go="`billing.AccountIamBinding`" pulumi-lang-python="`billing.AccountIamBinding`" pulumi-lang-yaml="`gcp.billing.AccountIamBinding`" pulumi-lang-java="`gcp.billing.AccountIamBinding`">`gcp.billing.AccountIamBinding`</span>:
  final Input<String> billingAccountId;
  final Input<AccountIamMemberCondition>? condition;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final Input<String> member;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.billing.AccountIamBinding`" pulumi-lang-dotnet="`gcp.billing.AccountIamBinding`" pulumi-lang-go="`billing.AccountIamBinding`" pulumi-lang-python="`billing.AccountIamBinding`" pulumi-lang-yaml="`gcp.billing.AccountIamBinding`" pulumi-lang-java="`gcp.billing.AccountIamBinding`">`gcp.billing.AccountIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`. Read more about roles [here](https://cloud.google.com/bigtable/docs/access-control#roles).
  ///
  /// <span pulumi-lang-nodejs="`gcp.billing.AccountIamPolicy`" pulumi-lang-dotnet="`gcp.billing.AccountIamPolicy`" pulumi-lang-go="`billing.AccountIamPolicy`" pulumi-lang-python="`billing.AccountIamPolicy`" pulumi-lang-yaml="`gcp.billing.AccountIamPolicy`" pulumi-lang-java="`gcp.billing.AccountIamPolicy`">`gcp.billing.AccountIamPolicy`</span> only:
  final Input<String> role;

  AccountIamMemberArgs({
    required this.billingAccountId,
    this.condition,
    required this.member,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccountId'] = billingAccountId;
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<AccountIamMemberCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['member'] = member;
    map['role'] = role;
    return map;
  }

  factory AccountIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return AccountIamMemberArgs(
      billingAccountId: Input.asInput<String>(map['billingAccountId']),
      condition:
          Input.asOptionalInput<AccountIamMemberCondition>(map['condition']),
      member: Input.asInput<String>(map['member']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
