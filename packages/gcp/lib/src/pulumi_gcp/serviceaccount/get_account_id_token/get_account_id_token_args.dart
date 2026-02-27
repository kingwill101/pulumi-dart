// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAccountIdToken.
class GetAccountIdTokenArgs {
  /// Delegate chain of approvals needed to perform full impersonation. Specify the fully qualified service account name.   Used only when using impersonation mode.
  final pulumi.Input<List<String>>? delegates;

  /// Include the verified email in the claim. Used only when using impersonation mode.
  final pulumi.Input<bool>? includeEmail;

  /// The audience claim for the `id_token`.
  final pulumi.Input<String> targetAudience;

  /// The email of the service account being impersonated.  Used only when using impersonation mode.
  final pulumi.Input<String>? targetServiceAccount;

  GetAccountIdTokenArgs({
    this.delegates,
    this.includeEmail,
    required this.targetAudience,
    this.targetServiceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final delegatesValue = delegates;
    if (delegatesValue != null) {
      map['delegates'] = delegatesValue;
    }
    final includeEmailValue = includeEmail;
    if (includeEmailValue != null) {
      map['includeEmail'] = includeEmailValue;
    }
    map['targetAudience'] = targetAudience;
    final targetServiceAccountValue = targetServiceAccount;
    if (targetServiceAccountValue != null) {
      map['targetServiceAccount'] = targetServiceAccountValue;
    }
    return map;
  }

  factory GetAccountIdTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountIdTokenArgs(
      delegates: pulumi.Input.asOptionalInput<List<String>>(map['delegates']),
      includeEmail: pulumi.Input.asOptionalInput<bool>(map['includeEmail']),
      targetAudience: pulumi.Input.asInput<String>(map['targetAudience']),
      targetServiceAccount:
          pulumi.Input.asOptionalInput<String>(map['targetServiceAccount']),
    );
  }
}
