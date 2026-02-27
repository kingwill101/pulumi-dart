// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAccountAccessToken.
class GetAccountAccessTokenArgs {
  /// Delegate chain of approvals needed to perform full impersonation. Specify the fully qualified service account name.  (e.g. `["projects/-/serviceAccounts/delegate-svc-account@project-id.iam.gserviceaccount.com"]`)
  final Input<List<String>>? delegates;

  /// Lifetime of the impersonated token (defaults to its max: `3600s`).
  final Input<String>? lifetime;

  /// The scopes the new credential should have (e.g. `["cloud-platform"]`)
  final Input<List<String>> scopes;

  /// The service account _to_ impersonate (e.g. `service_B@your-project-id.iam.gserviceaccount.com`)
  final Input<String> targetServiceAccount;

  GetAccountAccessTokenArgs({
    this.delegates,
    this.lifetime,
    required this.scopes,
    required this.targetServiceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final delegatesValue = delegates;
    if (delegatesValue != null) {
      map['delegates'] = delegatesValue;
    }
    final lifetimeValue = lifetime;
    if (lifetimeValue != null) {
      map['lifetime'] = lifetimeValue;
    }
    map['scopes'] = scopes;
    map['targetServiceAccount'] = targetServiceAccount;
    return map;
  }

  factory GetAccountAccessTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountAccessTokenArgs(
      delegates: Input.asOptionalInput<List<String>>(map['delegates']),
      lifetime: Input.asOptionalInput<String>(map['lifetime']),
      scopes: Input.asInput<List<String>>(map['scopes']),
      targetServiceAccount: Input.asInput<String>(map['targetServiceAccount']),
    );
  }
}
