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
  SourceCredentialState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? authType,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serverType,
    pulumi.Output<String>? token,
    pulumi.Output<String>? userName,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      authType = pulumi.Input.asOptionalInput<String>(authType),
      region = pulumi.Input.asOptionalInput<String>(region),
      serverType = pulumi.Input.asOptionalInput<String>(serverType),
      token = pulumi.Input.asOptionalInput<String>(token),
      userName = pulumi.Input.asOptionalInput<String>(userName);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      authType: map['authType'] == null ? null : pulumi.Output.create<String>(map['authType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serverType: map['serverType'] == null ? null : pulumi.Output.create<String>(map['serverType'] as String),
      token: map['token'] == null ? null : pulumi.Output.create<String>(map['token'] as String),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

