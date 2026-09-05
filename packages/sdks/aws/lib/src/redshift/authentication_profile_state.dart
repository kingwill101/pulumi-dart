// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AuthenticationProfile resources.
class AuthenticationProfileState {
  /// The content of the authentication profile in JSON format. The maximum length of the JSON string is determined by a quota for your account.
  final pulumi.Input<String?>? authenticationProfileContent;
  /// The name of the authentication profile.
  final pulumi.Input<String?>? authenticationProfileName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [AuthenticationProfileState].
  /// [authenticationProfileContent] The content of the authentication profile in JSON format. The maximum length of the JSON string is determined by a quota for your account.
  /// [authenticationProfileName] The name of the authentication profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const AuthenticationProfileState({
    this.authenticationProfileContent,
    this.authenticationProfileName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationProfileContent': ?authenticationProfileContent,
      'authenticationProfileName': ?authenticationProfileName,
      'region': ?region,
    };
  }

  factory AuthenticationProfileState.fromMap(Map<String, dynamic> map) {
    return AuthenticationProfileState(
      authenticationProfileContent: (() { final guardedValue = map['authenticationProfileContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authenticationProfileName: (() { final guardedValue = map['authenticationProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
