// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_authentication_profile_authentication_profile_args_doc}
/// The set of arguments for AuthenticationProfile.
/// {@endtemplate}
/// {@macro pulumi_redshift_authentication_profile_authentication_profile_args_doc}
class AuthenticationProfileArgs {
  /// The content of the authentication profile in JSON format. The maximum length of the JSON string is determined by a quota for your account.
  final pulumi.Input<String> authenticationProfileContent;
  /// The name of the authentication profile.
  final pulumi.Input<String> authenticationProfileName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AuthenticationProfileArgs].
  /// [authenticationProfileContent] The content of the authentication profile in JSON format. The maximum length of the JSON string is determined by a quota for your account.
  /// [authenticationProfileName] The name of the authentication profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const AuthenticationProfileArgs({
    required this.authenticationProfileContent,
    required this.authenticationProfileName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationProfileContent': authenticationProfileContent,
      'authenticationProfileName': authenticationProfileName,
      'region': ?region,
    };
  }

  factory AuthenticationProfileArgs.fromMap(Map<String, dynamic> map) {
    return AuthenticationProfileArgs(
      authenticationProfileContent: pulumi.Input.fromValue(map['authenticationProfileContent'] as String),
      authenticationProfileName: pulumi.Input.fromValue(map['authenticationProfileName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

