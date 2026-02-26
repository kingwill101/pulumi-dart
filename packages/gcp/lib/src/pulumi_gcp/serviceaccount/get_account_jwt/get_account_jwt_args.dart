// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAccountJwt.
class GetAccountJwtArgs {
  /// Delegate chain of approvals needed to perform full impersonation. Specify the fully qualified service account name.
  final Input<List<String>>? delegates;

  /// Number of seconds until the JWT expires. If set and non-zero an <span pulumi-lang-nodejs="`exp`" pulumi-lang-dotnet="`Exp`" pulumi-lang-go="`exp`" pulumi-lang-python="`exp`" pulumi-lang-yaml="`exp`" pulumi-lang-java="`exp`">`exp`</span> claim will be added to the payload derived from the current timestamp plus<span pulumi-lang-nodejs=" expiresIn " pulumi-lang-dotnet=" ExpiresIn " pulumi-lang-go=" expiresIn " pulumi-lang-python=" expires_in " pulumi-lang-yaml=" expiresIn " pulumi-lang-java=" expiresIn "> expires_in </span>seconds.
  final Input<int>? expiresIn;

  /// The JSON-encoded JWT claims set to include in the self-signed JWT.
  final Input<String> payload;

  /// The email of the service account that will sign the JWT.
  final Input<String> targetServiceAccount;

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
      delegates: Input.asOptionalInput<List<String>>(map['delegates']),
      expiresIn: Input.asOptionalInput<int>(map['expiresIn']),
      payload: Input.asInput<String>(map['payload']),
      targetServiceAccount: Input.asInput<String>(map['targetServiceAccount']),
    );
  }
}
