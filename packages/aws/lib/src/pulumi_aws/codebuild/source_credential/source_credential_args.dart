// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SourceCredential.
class SourceCredentialArgs {
  /// The type of authentication used to connect to a GitHub, GitHub Enterprise, or Bitbucket
  /// repository. Valid values are `BASIC_AUTH`,
  /// `PERSONAL_ACCESS_TOKEN`, `CODECONNECTIONS`, and `SECRETS_MANAGER`. An OAUTH connection is not supported by the API.
  final pulumi.Input<String> authType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The source provider used for this project.
  final pulumi.Input<String> serverType;

  /// For a GitHub and GitHub Enterprise, this is the personal access token. For Bitbucket, this is the
  /// app password. When using an AWS CodeStar connection (`auth_type = "CODECONNECTIONS")`, this is an AWS CodeStar
  /// Connection ARN.
  final pulumi.Input<String> token;

  /// The Bitbucket username when the authType is `BASIC_AUTH`. This parameter is not valid for
  /// other types of source providers or connections.
  final pulumi.Input<String>? userName;

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
      authType: pulumi.Input.asInput<String>(map['authType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serverType: pulumi.Input.asInput<String>(map['serverType']),
      token: pulumi.Input.asInput<String>(map['token']),
      userName: pulumi.Input.asOptionalInput<String>(map['userName']),
    );
  }
}
