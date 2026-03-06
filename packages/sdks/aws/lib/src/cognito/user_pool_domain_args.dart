// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognito_user_pool_domain_user_pool_domain_args_doc}
/// The set of arguments for UserPoolDomain.
/// {@endtemplate}
/// {@macro pulumi_cognito_user_pool_domain_user_pool_domain_args_doc}
class UserPoolDomainArgs {
  /// The ARN of an ISSUED ACM certificate in us-east-1 for a custom domain.
  final pulumi.Input<String>? certificateArn;
  /// For custom domains, this is the fully-qualified domain name, such as auth.example.com. For Amazon Cognito prefix domains, this is the prefix alone, such as auth.
  final pulumi.Input<String> domain;
  /// A version number that indicates the state of managed login for your domain. Valid values: `1` for hosted UI (classic), `2` for the newer managed login with the branding designer.
  final pulumi.Input<int>? managedLoginVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The user pool ID.
  final pulumi.Input<String> userPoolId;

  /// Creates a new [UserPoolDomainArgs].
  /// [certificateArn] The ARN of an ISSUED ACM certificate in us-east-1 for a custom domain.
  /// [domain] For custom domains, this is the fully-qualified domain name, such as auth.example.com. For Amazon Cognito prefix domains, this is the prefix alone, such as auth.
  /// [managedLoginVersion] A version number that indicates the state of managed login for your domain. Valid values: `1` for hosted UI (classic), `2` for the newer managed login with the branding designer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userPoolId] The user pool ID.
  const UserPoolDomainArgs({
    this.certificateArn,
    required this.domain,
    this.managedLoginVersion,
    this.region,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': ?certificateArn,
      'domain': domain,
      'managedLoginVersion': ?managedLoginVersion,
      'region': ?region,
      'userPoolId': userPoolId,
    };
  }

  factory UserPoolDomainArgs.fromMap(Map<String, dynamic> map) {
    return UserPoolDomainArgs(
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      managedLoginVersion: (() { final guardedValue = map['managedLoginVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userPoolId: pulumi.Input.fromValue(map['userPoolId'] as String),
    );
  }
}

