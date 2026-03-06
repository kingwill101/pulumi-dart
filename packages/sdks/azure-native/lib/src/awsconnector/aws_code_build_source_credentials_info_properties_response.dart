// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_type_enum_value_response.dart';
import 'server_type_enum_value_response.dart';

/// Definition of awsCodeBuildSourceCredentialsInfo
class AwsCodeBuildSourceCredentialsInfoPropertiesResponse {
  /// &lt;p&gt; The Amazon Resource Name (ARN) of the token. &lt;/p&gt;
  final pulumi.Input<String>? arn;
  /// &lt;p&gt; The type of authentication used by the credentials. Valid options are OAUTH, BASIC_AUTH, PERSONAL_ACCESS_TOKEN, or CODECONNECTIONS. &lt;/p&gt;
  final pulumi.Input<AuthTypeEnumValueResponse>? authType;
  /// &lt;p&gt;The connection ARN if your serverType type is GITLAB or GITLAB_SELF_MANAGED and your authType is CODECONNECTIONS.&lt;/p&gt;
  final pulumi.Input<String>? resource;
  /// &lt;p&gt; The type of source provider. The valid options are GITHUB, GITHUB_ENTERPRISE, GITLAB, GITLAB_SELF_MANAGED, or BITBUCKET. &lt;/p&gt;
  final pulumi.Input<ServerTypeEnumValueResponse>? serverType;

  /// Creates a new [AwsCodeBuildSourceCredentialsInfoPropertiesResponse].
  /// [arn] &lt;p&gt; The Amazon Resource Name (ARN) of the token. &lt;/p&gt;
  /// [authType] &lt;p&gt; The type of authentication used by the credentials. Valid options are OAUTH, BASIC_AUTH, PERSONAL_ACCESS_TOKEN, or CODECONNECTIONS. &lt;/p&gt;
  /// [resource] &lt;p&gt;The connection ARN if your serverType type is GITLAB or GITLAB_SELF_MANAGED and your authType is CODECONNECTIONS.&lt;/p&gt;
  /// [serverType] &lt;p&gt; The type of source provider. The valid options are GITHUB, GITHUB_ENTERPRISE, GITLAB, GITLAB_SELF_MANAGED, or BITBUCKET. &lt;/p&gt;
  const AwsCodeBuildSourceCredentialsInfoPropertiesResponse({
    this.arn,
    this.authType,
    this.resource,
    this.serverType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authType': ?pulumi.Input.mapOptionalInputValue<AuthTypeEnumValueResponse, Map<String, dynamic>>(authType, (value) => value.toMap()),
      'resource': ?resource,
      'serverType': ?pulumi.Input.mapOptionalInputValue<ServerTypeEnumValueResponse, Map<String, dynamic>>(serverType, (value) => value.toMap()),
    };
  }

  factory AwsCodeBuildSourceCredentialsInfoPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsCodeBuildSourceCredentialsInfoPropertiesResponse(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthTypeEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverType: (() { final guardedValue = map['serverType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerTypeEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

