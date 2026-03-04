// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the login flow, including the scopes that should be requested.
class LoginScopes {
  /// A list of the scopes that should be requested while authenticating.
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [LoginScopes].
  /// [scopes] A list of the scopes that should be requested while authenticating.
  LoginScopes({this.scopes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'scopes': ?scopes};
  }

  factory LoginScopes.fromMap(Map<String, dynamic> map) {
    return LoginScopes(
      scopes: (() {
        final guardedValue = map['scopes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
