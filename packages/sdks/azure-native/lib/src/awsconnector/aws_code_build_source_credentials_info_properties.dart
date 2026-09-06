// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_type_enum_value.dart';
import 'server_type_enum_value.dart';

/// Definition of awsCodeBuildSourceCredentialsInfo
class AwsCodeBuildSourceCredentialsInfoProperties {
  /// &lt;p&gt; The Amazon Resource Name (ARN) of the token. &lt;/p&gt;
  final pulumi.Input<String?>? arn;
  /// &lt;p&gt; The type of authentication used by the credentials. Valid options are OAUTH, BASIC_AUTH, PERSONAL_ACCESS_TOKEN, or CODECONNECTIONS. &lt;/p&gt;
  final pulumi.Input<AuthTypeEnumValue?>? authType;
  /// &lt;p&gt;The connection ARN if your serverType type is GITLAB or GITLAB_SELF_MANAGED and your authType is CODECONNECTIONS.&lt;/p&gt;
  final pulumi.Input<String?>? resource;
  /// &lt;p&gt; The type of source provider. The valid options are GITHUB, GITHUB_ENTERPRISE, GITLAB, GITLAB_SELF_MANAGED, or BITBUCKET. &lt;/p&gt;
  final pulumi.Input<ServerTypeEnumValue?>? serverType;

  /// Creates a new [AwsCodeBuildSourceCredentialsInfoProperties].
  /// [arn] &lt;p&gt; The Amazon Resource Name (ARN) of the token. &lt;/p&gt;
  /// [authType] &lt;p&gt; The type of authentication used by the credentials. Valid options are OAUTH, BASIC_AUTH, PERSONAL_ACCESS_TOKEN, or CODECONNECTIONS. &lt;/p&gt;
  /// [resource] &lt;p&gt;The connection ARN if your serverType type is GITLAB or GITLAB_SELF_MANAGED and your authType is CODECONNECTIONS.&lt;/p&gt;
  /// [serverType] &lt;p&gt; The type of source provider. The valid options are GITHUB, GITHUB_ENTERPRISE, GITLAB, GITLAB_SELF_MANAGED, or BITBUCKET. &lt;/p&gt;
  const AwsCodeBuildSourceCredentialsInfoProperties({
    this.arn,
    this.authType,
    this.resource,
    this.serverType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authType': ?pulumi.Input.mapOptionalInputValue<AuthTypeEnumValue, Map<String, dynamic>>(authType, (value) => value.toMap()),
      'resource': ?resource,
      'serverType': ?pulumi.Input.mapOptionalInputValue<ServerTypeEnumValue, Map<String, dynamic>>(serverType, (value) => value.toMap()),
    };
  }

  factory AwsCodeBuildSourceCredentialsInfoProperties.fromMap(Map<String, dynamic> map) {
    return AwsCodeBuildSourceCredentialsInfoProperties(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverType: (() { final guardedValue = map['serverType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
