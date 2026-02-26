// ignore_for_file: unused_element, unnecessary_cast

class GetUserPoolClientAnalyticsConfiguration {
  /// (Optional) Application ARN for an Amazon Pinpoint application. Conflicts with <span pulumi-lang-nodejs="`externalId`" pulumi-lang-dotnet="`ExternalId`" pulumi-lang-go="`externalId`" pulumi-lang-python="`external_id`" pulumi-lang-yaml="`externalId`" pulumi-lang-java="`externalId`">`external_id`</span> and <span pulumi-lang-nodejs="`roleArn`" pulumi-lang-dotnet="`RoleArn`" pulumi-lang-go="`roleArn`" pulumi-lang-python="`role_arn`" pulumi-lang-yaml="`roleArn`" pulumi-lang-java="`roleArn`">`role_arn`</span>.
  final String applicationArn;

  /// (Optional) Application ID for an Amazon Pinpoint application.
  final String applicationId;

  /// (Optional) ID for the Analytics Configuration. Conflicts with <span pulumi-lang-nodejs="`applicationArn`" pulumi-lang-dotnet="`ApplicationArn`" pulumi-lang-go="`applicationArn`" pulumi-lang-python="`application_arn`" pulumi-lang-yaml="`applicationArn`" pulumi-lang-java="`applicationArn`">`application_arn`</span>.
  final String externalId;

  /// (Optional) ARN of an IAM role that authorizes Amazon Cognito to publish events to Amazon Pinpoint analytics. Conflicts with <span pulumi-lang-nodejs="`applicationArn`" pulumi-lang-dotnet="`ApplicationArn`" pulumi-lang-go="`applicationArn`" pulumi-lang-python="`application_arn`" pulumi-lang-yaml="`applicationArn`" pulumi-lang-java="`applicationArn`">`application_arn`</span>.
  final String roleArn;

  /// (Optional) If set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, Amazon Cognito will include user data in the events it publishes to Amazon Pinpoint analytics.
  final bool userDataShared;

  GetUserPoolClientAnalyticsConfiguration({
    required this.applicationArn,
    required this.applicationId,
    required this.externalId,
    required this.roleArn,
    required this.userDataShared,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationArn'] = applicationArn;
    map['applicationId'] = applicationId;
    map['externalId'] = externalId;
    map['roleArn'] = roleArn;
    map['userDataShared'] = userDataShared;
    return map;
  }

  factory GetUserPoolClientAnalyticsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetUserPoolClientAnalyticsConfiguration(
      applicationArn: map['applicationArn'] as String,
      applicationId: map['applicationId'] as String,
      externalId: map['externalId'] as String,
      roleArn: map['roleArn'] as String,
      userDataShared: map['userDataShared'] as bool,
    );
  }
}
