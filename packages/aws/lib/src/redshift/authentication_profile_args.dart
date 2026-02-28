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
  AuthenticationProfileArgs({
    required String authenticationProfileContent,
    required String authenticationProfileName,
    String? region,
  })  : authenticationProfileContent =
            pulumi.Input.asInput<String>(authenticationProfileContent),
        authenticationProfileName =
            pulumi.Input.asInput<String>(authenticationProfileName),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authenticationProfileContent'] = authenticationProfileContent;
    map['authenticationProfileName'] = authenticationProfileName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AuthenticationProfileArgs.fromMap(Map<String, dynamic> map) {
    return AuthenticationProfileArgs(
      authenticationProfileContent:
          map['authenticationProfileContent'] as String,
      authenticationProfileName: map['authenticationProfileName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
