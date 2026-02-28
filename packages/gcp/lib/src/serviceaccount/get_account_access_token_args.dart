// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_serviceaccount_get_account_access_token_get_account_access_token_args_doc}
/// Arguments for getAccountAccessToken.
/// {@endtemplate}
/// {@macro pulumi_serviceaccount_get_account_access_token_get_account_access_token_args_doc}
class GetAccountAccessTokenArgs {
  /// Delegate chain of approvals needed to perform full impersonation. Specify the fully qualified service account name.  (e.g. `["projects/-/serviceAccounts/delegate-svc-account@project-id.iam.gserviceaccount.com"]`)
  final pulumi.Input<List<String>>? delegates;
  /// Lifetime of the impersonated token (defaults to its max: `3600s`).
  final pulumi.Input<String>? lifetime;
  /// The scopes the new credential should have (e.g. `["cloud-platform"]`)
  final pulumi.Input<List<String>> scopes;
  /// The service account _to_ impersonate (e.g. `service_B@your-project-id.iam.gserviceaccount.com`)
  final pulumi.Input<String> targetServiceAccount;

  /// Creates a new [GetAccountAccessTokenArgs].
  /// [delegates] Delegate chain of approvals needed to perform full impersonation. Specify the fully qualified service account name.  (e.g. `["projects/-/serviceAccounts/delegate-svc-account@project-id.iam.gserviceaccount.com"]`)
  /// [lifetime] Lifetime of the impersonated token (defaults to its max: `3600s`).
  /// [scopes] The scopes the new credential should have (e.g. `["cloud-platform"]`)
  /// [targetServiceAccount] The service account _to_ impersonate (e.g. `service_B@your-project-id.iam.gserviceaccount.com`)
  GetAccountAccessTokenArgs({
    List<String>? delegates,
    String? lifetime,
    required List<String> scopes,
    required String targetServiceAccount,
  }) :
      delegates = pulumi.Input.asOptionalInput<List<String>>(delegates),
      lifetime = pulumi.Input.asOptionalInput<String>(lifetime),
      scopes = pulumi.Input.asInput<List<String>>(scopes),
      targetServiceAccount = pulumi.Input.asInput<String>(targetServiceAccount);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegates': ?delegates,
      'lifetime': ?lifetime,
      'scopes': scopes,
      'targetServiceAccount': targetServiceAccount,
    };
  }

  factory GetAccountAccessTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountAccessTokenArgs(
      delegates: map['delegates'] == null ? null : (map['delegates'] as List).cast<String>(),
      lifetime: map['lifetime'] == null ? null : map['lifetime'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
      targetServiceAccount: map['targetServiceAccount'] as String,
    );
  }
}

