// ignore_for_file: unused_element, unnecessary_cast


class UserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSetting {
  /// The name of the data source that you're connecting to. Canvas currently supports OAuth for Snowflake and Salesforce Data Cloud. Valid values are `SalesforceGenie` and `Snowflake`.
  final String? dataSourceName;
  /// The ARN of an Amazon Web Services Secrets Manager secret that stores the credentials from your identity provider, such as the client ID and secret, authorization URL, and token URL.
  final String secretArn;
  /// Describes whether OAuth for a data source is enabled or disabled in the Canvas application. Valid values are `ENABLED` and `DISABLED`.
  final String? status;

  /// Creates a new [UserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSetting].
  /// [dataSourceName] The name of the data source that you're connecting to. Canvas currently supports OAuth for Snowflake and Salesforce Data Cloud. Valid values are `SalesforceGenie` and `Snowflake`.
  /// [secretArn] The ARN of an Amazon Web Services Secrets Manager secret that stores the credentials from your identity provider, such as the client ID and secret, authorization URL, and token URL.
  /// [status] Describes whether OAuth for a data source is enabled or disabled in the Canvas application. Valid values are `ENABLED` and `DISABLED`.
  UserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSetting({
    this.dataSourceName,
    required this.secretArn,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceName': ?dataSourceName,
      'secretArn': secretArn,
      'status': ?status,
    };
  }

  factory UserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSetting.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSetting(
      dataSourceName: map['dataSourceName'] == null ? null : map['dataSourceName'] as String,
      secretArn: map['secretArn'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

