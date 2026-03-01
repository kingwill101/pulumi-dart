// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_serviceaccount_get_account_jwt_get_account_jwt_args_doc}
/// Arguments for getAccountJwt.
/// {@endtemplate}
/// {@macro pulumi_serviceaccount_get_account_jwt_get_account_jwt_args_doc}
class GetAccountJwtArgs {
  /// Delegate chain of approvals needed to perform full impersonation. Specify the fully qualified service account name.
  final pulumi.Input<List<String>>? delegates;

  /// Number of seconds until the JWT expires. If set and non-zero an `exp` claim will be added to the payload derived from the current timestamp plus expires_in seconds.
  final pulumi.Input<int>? expiresIn;

  /// The JSON-encoded JWT claims set to include in the self-signed JWT.
  final pulumi.Input<String> payload;

  /// The email of the service account that will sign the JWT.
  final pulumi.Input<String> targetServiceAccount;

  /// Creates a new [GetAccountJwtArgs].
  /// [delegates] Delegate chain of approvals needed to perform full impersonation. Specify the fully qualified service account name.
  /// [expiresIn] Number of seconds until the JWT expires. If set and non-zero an `exp` claim will be added to the payload derived from the current timestamp plus expires_in seconds.
  /// [payload] The JSON-encoded JWT claims set to include in the self-signed JWT.
  /// [targetServiceAccount] The email of the service account that will sign the JWT.
  GetAccountJwtArgs({
    List<String>? delegates,
    int? expiresIn,
    required String payload,
    required String targetServiceAccount,
  }) : delegates = pulumi.Input.asOptionalInput<List<String>>(delegates),
       expiresIn = pulumi.Input.asOptionalInput<int>(expiresIn),
       payload = pulumi.Input.asInput<String>(payload),
       targetServiceAccount = pulumi.Input.asInput<String>(
         targetServiceAccount,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegates': ?delegates,
      'expiresIn': ?expiresIn,
      'payload': payload,
      'targetServiceAccount': targetServiceAccount,
    };
  }

  factory GetAccountJwtArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountJwtArgs(
      delegates: map['delegates'] == null
          ? null
          : (map['delegates'] as List).cast<String>(),
      expiresIn: map['expiresIn'] == null ? null : map['expiresIn'] as int,
      payload: map['payload'] as String,
      targetServiceAccount: map['targetServiceAccount'] as String,
    );
  }
}
