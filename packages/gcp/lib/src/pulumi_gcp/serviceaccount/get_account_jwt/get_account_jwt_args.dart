// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAccountJwt.
class GetAccountJwtArgs {
  /// Delegate chain of approvals needed to perform full impersonation. Specify the fully qualified service account name.
  final pulumi.Input<List<String>>? delegates;

  /// Number of seconds until the JWT expires. If set and non-zero an `exp` claim will be added to the payload derived from the current timestamp plus expires_in seconds.
  final pulumi.Input<int>? expiresIn;

  /// The JSON-encoded JWT claims set to include in the self-signed JWT.
  final pulumi.Input<String> payload;

  /// The email of the service account that will sign the JWT.
  final pulumi.Input<String> targetServiceAccount;

  GetAccountJwtArgs({
    this.delegates,
    this.expiresIn,
    required this.payload,
    required this.targetServiceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final delegatesValue = delegates;
    if (delegatesValue != null) {
      map['delegates'] = delegatesValue;
    }
    final expiresInValue = expiresIn;
    if (expiresInValue != null) {
      map['expiresIn'] = expiresInValue;
    }
    map['payload'] = payload;
    map['targetServiceAccount'] = targetServiceAccount;
    return map;
  }

  factory GetAccountJwtArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountJwtArgs(
      delegates: pulumi.Input.asOptionalInput<List<String>>(map['delegates']),
      expiresIn: pulumi.Input.asOptionalInput<int>(map['expiresIn']),
      payload: pulumi.Input.asInput<String>(map['payload']),
      targetServiceAccount:
          pulumi.Input.asInput<String>(map['targetServiceAccount']),
    );
  }
}
