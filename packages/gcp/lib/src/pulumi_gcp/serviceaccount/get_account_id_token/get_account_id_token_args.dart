// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAccountIdToken.
class GetAccountIdTokenArgs {
  /// Delegate chain of approvals needed to perform full impersonation. Specify the fully qualified service account name.   Used only when using impersonation mode.
  final Input<List<String>>? delegates;

  /// Include the verified email in the claim. Used only when using impersonation mode.
  final Input<bool>? includeEmail;

  /// The audience claim for the `id_token`.
  final Input<String> targetAudience;

  /// The email of the service account being impersonated.  Used only when using impersonation mode.
  final Input<String>? targetServiceAccount;

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
      delegates: Input.asOptionalInput<List<String>>(map['delegates']),
      includeEmail: Input.asOptionalInput<bool>(map['includeEmail']),
      targetAudience: Input.asInput<String>(map['targetAudience']),
      targetServiceAccount:
          Input.asOptionalInput<String>(map['targetServiceAccount']),
    );
  }
}
