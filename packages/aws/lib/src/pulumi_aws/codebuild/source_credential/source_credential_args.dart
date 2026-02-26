// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SourceCredential.
class SourceCredentialArgs {
  /// The type of authentication used to connect to a GitHub, GitHub Enterprise, or Bitbucket
  /// repository. Valid values are `BASIC_AUTH`,
  /// `PERSONAL_ACCESS_TOKEN`, `CODECONNECTIONS`, and `SECRETS_MANAGER`. An OAUTH connection is not supported by the API.
  final Input<String> authType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The source provider used for this project.
  final Input<String> serverType;

  /// For a GitHub and GitHub Enterprise, this is the personal access token. For Bitbucket, this is the
  /// app password. When using an AWS CodeStar connection (<span pulumi-lang-nodejs="`authType " pulumi-lang-dotnet="`AuthType " pulumi-lang-go="`authType " pulumi-lang-python="`auth_type " pulumi-lang-yaml="`authType " pulumi-lang-java="`authType ">`auth_type </span>= "CODECONNECTIONS")`, this is an AWS CodeStar
  /// Connection ARN.
  final Input<String> token;

  /// The Bitbucket username when the authType is `BASIC_AUTH`. This parameter is not valid for
  /// other types of source providers or connections.
  final Input<String>? userName;

  SourceCredentialArgs({
    required this.authType,
    this.region,
    required this.serverType,
    required this.token,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authType'] = authType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serverType'] = serverType;
    map['token'] = token;
    final userNameValue = userName;
    if (userNameValue != null) {
      map['userName'] = userNameValue;
    }
    return map;
  }

  factory SourceCredentialArgs.fromMap(Map<String, dynamic> map) {
    return SourceCredentialArgs(
      authType: Input.asInput<String>(map['authType']),
      region: Input.asOptionalInput<String>(map['region']),
      serverType: Input.asInput<String>(map['serverType']),
      token: Input.asInput<String>(map['token']),
      userName: Input.asOptionalInput<String>(map['userName']),
    );
  }
}
