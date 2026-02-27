// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AuthenticationProfile.
class AuthenticationProfileArgs {
  /// The content of the authentication profile in JSON format. The maximum length of the JSON string is determined by a quota for your account.
  final pulumi.Input<String> authenticationProfileContent;

  /// The name of the authentication profile.
  final pulumi.Input<String> authenticationProfileName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  AuthenticationProfileArgs({
    required this.authenticationProfileContent,
    required this.authenticationProfileName,
    this.region,
  });

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
          pulumi.Input.asInput<String>(map['authenticationProfileContent']),
      authenticationProfileName:
          pulumi.Input.asInput<String>(map['authenticationProfileName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
