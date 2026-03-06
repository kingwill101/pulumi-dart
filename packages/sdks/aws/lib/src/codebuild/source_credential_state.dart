// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SourceCredential resources.
class SourceCredentialState {
  /// The ARN of Source Credential.
  final pulumi.Input<String>? arn;
  /// The type of authentication used to connect to a GitHub, GitHub Enterprise, or Bitbucket
  /// repository. Valid values are `BASIC_AUTH`,
  /// `PERSONAL_ACCESS_TOKEN`, `CODECONNECTIONS`, and `SECRETS_MANAGER`. An OAUTH connection is not supported by the API.
  final pulumi.Input<String>? authType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The source provider used for this project.
  final pulumi.Input<String>? serverType;
  /// For a GitHub and GitHub Enterprise, this is the personal access token. For Bitbucket, this is the
  /// app password. When using an AWS CodeStar connection (`auth_type = "CODECONNECTIONS")`, this is an AWS CodeStar
  /// Connection ARN.
  final pulumi.Input<String>? token;
  /// The Bitbucket username when the authType is `BASIC_AUTH`. This parameter is not valid for
  /// other types of source providers or connections.
  final pulumi.Input<String>? userName;

  /// Creates a new [SourceCredentialState].
  /// [arn] The ARN of Source Credential.
  /// [authType] The type of authentication used to connect to a GitHub, GitHub Enterprise, or Bitbucket
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverType] The source provider used for this project.
  /// [token] For a GitHub and GitHub Enterprise, this is the personal access token. For Bitbucket, this is the
  /// [userName] The Bitbucket username when the authType is `BASIC_AUTH`. This parameter is not valid for
  const SourceCredentialState({
    this.arn,
    this.authType,
    this.region,
    this.serverType,
    this.token,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authType': ?authType,
      'region': ?region,
      'serverType': ?serverType,
      'token': ?token,
      'userName': ?userName,
    };
  }

  factory SourceCredentialState.fromMap(Map<String, dynamic> map) {
    return SourceCredentialState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverType: (() { final guardedValue = map['serverType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

