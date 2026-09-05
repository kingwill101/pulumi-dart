// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSetting {
  /// The name of the data source that you're connecting to. Canvas currently supports OAuth for Snowflake and Salesforce Data Cloud. Valid values are `SalesforceGenie` and `Snowflake`.
  final pulumi.Input<String?>? dataSourceName;
  /// The ARN of an Amazon Web Services Secrets Manager secret that stores the credentials from your identity provider, such as the client ID and secret, authorization URL, and token URL.
  final pulumi.Input<String> secretArn;
  /// Describes whether OAuth for a data source is enabled or disabled in the Canvas application. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String?>? status;

  /// Creates a new [UserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSetting].
  /// [dataSourceName] The name of the data source that you're connecting to. Canvas currently supports OAuth for Snowflake and Salesforce Data Cloud. Valid values are `SalesforceGenie` and `Snowflake`.
  /// [secretArn] The ARN of an Amazon Web Services Secrets Manager secret that stores the credentials from your identity provider, such as the client ID and secret, authorization URL, and token URL.
  /// [status] Describes whether OAuth for a data source is enabled or disabled in the Canvas application. Valid values are `ENABLED` and `DISABLED`.
  const UserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSetting({
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
      dataSourceName: (() { final guardedValue = map['dataSourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretArn: pulumi.Input.fromValue(map['secretArn'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
