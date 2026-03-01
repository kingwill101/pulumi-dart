// ignore_for_file: unused_element, unnecessary_cast

import 'auth_type_enum_value.dart';
import 'server_type_enum_value.dart';

/// Definition of awsCodeBuildSourceCredentialsInfo
class AwsCodeBuildSourceCredentialsInfoProperties {
  /// <p> The Amazon Resource Name (ARN) of the token. </p>
  final String? arn;
  /// <p> The type of authentication used by the credentials. Valid options are OAUTH, BASIC_AUTH, PERSONAL_ACCESS_TOKEN, or CODECONNECTIONS. </p>
  final AuthTypeEnumValue? authType;
  /// <p>The connection ARN if your serverType type is GITLAB or GITLAB_SELF_MANAGED and your authType is CODECONNECTIONS.</p>
  final String? resource;
  /// <p> The type of source provider. The valid options are GITHUB, GITHUB_ENTERPRISE, GITLAB, GITLAB_SELF_MANAGED, or BITBUCKET. </p>
  final ServerTypeEnumValue? serverType;

  /// Creates a new [AwsCodeBuildSourceCredentialsInfoProperties].
  /// [arn] <p> The Amazon Resource Name (ARN) of the token. </p>
  /// [authType] <p> The type of authentication used by the credentials. Valid options are OAUTH, BASIC_AUTH, PERSONAL_ACCESS_TOKEN, or CODECONNECTIONS. </p>
  /// [resource] <p>The connection ARN if your serverType type is GITLAB or GITLAB_SELF_MANAGED and your authType is CODECONNECTIONS.</p>
  /// [serverType] <p> The type of source provider. The valid options are GITHUB, GITHUB_ENTERPRISE, GITLAB, GITLAB_SELF_MANAGED, or BITBUCKET. </p>
  AwsCodeBuildSourceCredentialsInfoProperties({
    this.arn,
    this.authType,
    this.resource,
    this.serverType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authType': ?authType == null ? null : authType!.toMap(),
      'resource': ?resource,
      'serverType': ?serverType == null ? null : serverType!.toMap(),
    };
  }

  factory AwsCodeBuildSourceCredentialsInfoProperties.fromMap(Map<String, dynamic> map) {
    return AwsCodeBuildSourceCredentialsInfoProperties(
      arn: map['arn'] == null ? null : map['arn'] as String,
      authType: map['authType'] == null ? null : AuthTypeEnumValue.fromMap((map['authType'] as Map).cast<String, dynamic>()),
      resource: map['resource'] == null ? null : map['resource'] as String,
      serverType: map['serverType'] == null ? null : ServerTypeEnumValue.fromMap((map['serverType'] as Map).cast<String, dynamic>()),
    );
  }
}

