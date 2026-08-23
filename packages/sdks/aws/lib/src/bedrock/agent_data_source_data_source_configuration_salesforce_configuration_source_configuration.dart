// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentDataSourceDataSourceConfigurationSalesforceConfigurationSourceConfiguration {
  /// The supported authentication type to authenticate and connect to your SharePoint site. Valid values: `OAUTH2_CLIENT_CREDENTIALS`, `OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS`.
  final pulumi.Input<String> authType;
  /// The Amazon Resource Name of an AWS Secrets Manager secret that stores your authentication credentials for your SharePoint site. For more information on the key-value pairs that must be included in your secret, depending on your authentication type, see SharePoint connection configuration. Pattern: ^arn:aws(|-cn|-us-gov):secretsmanager:[a-z0-9-]{1,20}:([0-9]{12}|):secret:[a-zA-Z0-9!/_+=.@-]{1,512}$.
  final pulumi.Input<String> credentialsSecretArn;
  /// The Salesforce host URL or instance URL. Pattern: `^https://[A-Za-z0-9][^\s]*$`.
  final pulumi.Input<String> hostUrl;

  /// Creates a new [AgentDataSourceDataSourceConfigurationSalesforceConfigurationSourceConfiguration].
  /// [authType] The supported authentication type to authenticate and connect to your SharePoint site. Valid values: `OAUTH2_CLIENT_CREDENTIALS`, `OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS`.
  /// [credentialsSecretArn] The Amazon Resource Name of an AWS Secrets Manager secret that stores your authentication credentials for your SharePoint site. For more information on the key-value pairs that must be included in your secret, depending on your authentication type, see SharePoint connection configuration. Pattern: ^arn:aws(|-cn|-us-gov):secretsmanager:[a-z0-9-]{1,20}:([0-9]{12}|):secret:[a-zA-Z0-9!/_+=.@-]{1,512}$.
  /// [hostUrl] The Salesforce host URL or instance URL. Pattern: `^https://[A-Za-z0-9][^\s]*$`.
  const AgentDataSourceDataSourceConfigurationSalesforceConfigurationSourceConfiguration({
    required this.authType,
    required this.credentialsSecretArn,
    required this.hostUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': authType,
      'credentialsSecretArn': credentialsSecretArn,
      'hostUrl': hostUrl,
    };
  }

  factory AgentDataSourceDataSourceConfigurationSalesforceConfigurationSourceConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationSalesforceConfigurationSourceConfiguration(
      authType: pulumi.Input.fromValue(map['authType'] as String),
      credentialsSecretArn: pulumi.Input.fromValue(map['credentialsSecretArn'] as String),
      hostUrl: pulumi.Input.fromValue(map['hostUrl'] as String),
    );
  }
}
