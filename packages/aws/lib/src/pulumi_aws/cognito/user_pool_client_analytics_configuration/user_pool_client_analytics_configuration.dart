// ignore_for_file: unused_element, unnecessary_cast

class UserPoolClientAnalyticsConfiguration {
  /// Application ARN for an Amazon Pinpoint application. Conflicts with <span pulumi-lang-nodejs="`externalId`" pulumi-lang-dotnet="`ExternalId`" pulumi-lang-go="`externalId`" pulumi-lang-python="`external_id`" pulumi-lang-yaml="`externalId`" pulumi-lang-java="`externalId`">`external_id`</span> and <span pulumi-lang-nodejs="`roleArn`" pulumi-lang-dotnet="`RoleArn`" pulumi-lang-go="`roleArn`" pulumi-lang-python="`role_arn`" pulumi-lang-yaml="`roleArn`" pulumi-lang-java="`roleArn`">`role_arn`</span>.
  final String? applicationArn;

  /// Application ID for an Amazon Pinpoint application.
  final String? applicationId;

  /// ID for the Analytics Configuration. Conflicts with <span pulumi-lang-nodejs="`applicationArn`" pulumi-lang-dotnet="`ApplicationArn`" pulumi-lang-go="`applicationArn`" pulumi-lang-python="`application_arn`" pulumi-lang-yaml="`applicationArn`" pulumi-lang-java="`applicationArn`">`application_arn`</span>.
  final String? externalId;

  /// ARN of an IAM role that authorizes Amazon Cognito to publish events to Amazon Pinpoint analytics. Conflicts with <span pulumi-lang-nodejs="`applicationArn`" pulumi-lang-dotnet="`ApplicationArn`" pulumi-lang-go="`applicationArn`" pulumi-lang-python="`application_arn`" pulumi-lang-yaml="`applicationArn`" pulumi-lang-java="`applicationArn`">`application_arn`</span>.
  final String? roleArn;

  /// If set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, Amazon Cognito will include user data in the events it publishes to Amazon Pinpoint analytics.
  final bool? userDataShared;

  UserPoolClientAnalyticsConfiguration({
    this.applicationArn,
    this.applicationId,
    this.externalId,
    this.roleArn,
    this.userDataShared,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applicationArnValue = applicationArn;
    if (applicationArnValue != null) {
      map['applicationArn'] = applicationArnValue;
    }
    final applicationIdValue = applicationId;
    if (applicationIdValue != null) {
      map['applicationId'] = applicationIdValue;
    }
    final externalIdValue = externalId;
    if (externalIdValue != null) {
      map['externalId'] = externalIdValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    final userDataSharedValue = userDataShared;
    if (userDataSharedValue != null) {
      map['userDataShared'] = userDataSharedValue;
    }
    return map;
  }

  factory UserPoolClientAnalyticsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return UserPoolClientAnalyticsConfiguration(
      applicationArn: map['applicationArn'] == null
          ? null
          : map['applicationArn'] as String,
      applicationId:
          map['applicationId'] == null ? null : map['applicationId'] as String,
      externalId:
          map['externalId'] == null ? null : map['externalId'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      userDataShared:
          map['userDataShared'] == null ? null : map['userDataShared'] as bool,
    );
  }
}
