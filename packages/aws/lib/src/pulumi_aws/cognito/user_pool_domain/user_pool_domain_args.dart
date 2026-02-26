// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for UserPoolDomain.
class UserPoolDomainArgs {
  /// The ARN of an ISSUED ACM certificate in us-east-1 for a custom domain.
  final Input<String>? certificateArn;

  /// For custom domains, this is the fully-qualified domain name, such as auth.example.com. For Amazon Cognito prefix domains, this is the prefix alone, such as auth.
  final Input<String> domain;

  /// A version number that indicates the state of managed login for your domain. Valid values: <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> for hosted UI (classic), <span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span> for the newer managed login with the branding designer.
  final Input<int>? managedLoginVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The user pool ID.
  final Input<String> userPoolId;

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
      certificateArn: Input.asOptionalInput<String>(map['certificateArn']),
      domain: Input.asInput<String>(map['domain']),
      managedLoginVersion:
          Input.asOptionalInput<int>(map['managedLoginVersion']),
      region: Input.asOptionalInput<String>(map['region']),
      userPoolId: Input.asInput<String>(map['userPoolId']),
    );
  }
}
