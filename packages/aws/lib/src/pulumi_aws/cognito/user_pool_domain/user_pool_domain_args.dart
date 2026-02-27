// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for UserPoolDomain.
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

  UserPoolDomainArgs({
    this.certificateArn,
    required this.domain,
    this.managedLoginVersion,
    this.region,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateArnValue = certificateArn;
    if (certificateArnValue != null) {
      map['certificateArn'] = certificateArnValue;
    }
    map['domain'] = domain;
    final managedLoginVersionValue = managedLoginVersion;
    if (managedLoginVersionValue != null) {
      map['managedLoginVersion'] = managedLoginVersionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['userPoolId'] = userPoolId;
    return map;
  }

  factory UserPoolDomainArgs.fromMap(Map<String, dynamic> map) {
    return UserPoolDomainArgs(
      certificateArn:
          pulumi.Input.asOptionalInput<String>(map['certificateArn']),
      domain: pulumi.Input.asInput<String>(map['domain']),
      managedLoginVersion:
          pulumi.Input.asOptionalInput<int>(map['managedLoginVersion']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      userPoolId: pulumi.Input.asInput<String>(map['userPoolId']),
    );
  }
}
