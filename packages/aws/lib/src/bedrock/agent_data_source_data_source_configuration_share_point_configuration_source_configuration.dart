// ignore_for_file: unused_element, unnecessary_cast

class AgentDataSourceDataSourceConfigurationSharePointConfigurationSourceConfiguration {
  /// The supported authentication type to authenticate and connect to your SharePoint site. Valid values: `OAUTH2_CLIENT_CREDENTIALS`, `OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS`.
  final String authType;

  /// The Amazon Resource Name of an AWS Secrets Manager secret that stores your authentication credentials for your SharePoint site. For more information on the key-value pairs that must be included in your secret, depending on your authentication type, see SharePoint connection configuration. Pattern: ^arn:aws(|-cn|-us-gov):secretsmanager:[a-z0-9-]{1,20}:([0-9]{12}|):secret:[a-zA-Z0-9!/_+=.@-]{1,512}$.
  final String credentialsSecretArn;

  /// The domain of your SharePoint instance or site URL/URLs.
  final String domain;

  /// The supported host type, whether online/cloud or server/on-premises. Valid values: `ONLINE`.
  final String hostType;

  /// A list of one or more SharePoint site URLs.
  final List<String> siteUrls;

  /// The identifier of your Microsoft 365 tenant.
  final String? tenantId;

  /// Creates a new [AgentDataSourceDataSourceConfigurationSharePointConfigurationSourceConfiguration].
  /// [authType] The supported authentication type to authenticate and connect to your SharePoint site. Valid values: `OAUTH2_CLIENT_CREDENTIALS`, `OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS`.
  /// [credentialsSecretArn] The Amazon Resource Name of an AWS Secrets Manager secret that stores your authentication credentials for your SharePoint site. For more information on the key-value pairs that must be included in your secret, depending on your authentication type, see SharePoint connection configuration. Pattern: ^arn:aws(|-cn|-us-gov):secretsmanager:[a-z0-9-]{1,20}:([0-9]{12}|):secret:[a-zA-Z0-9!/_+=.@-]{1,512}$.
  /// [domain] The domain of your SharePoint instance or site URL/URLs.
  /// [hostType] The supported host type, whether online/cloud or server/on-premises. Valid values: `ONLINE`.
  /// [siteUrls] A list of one or more SharePoint site URLs.
  /// [tenantId] The identifier of your Microsoft 365 tenant.
  AgentDataSourceDataSourceConfigurationSharePointConfigurationSourceConfiguration({
    required this.authType,
    required this.credentialsSecretArn,
    required this.domain,
    required this.hostType,
    required this.siteUrls,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authType'] = authType;
    map['credentialsSecretArn'] = credentialsSecretArn;
    map['domain'] = domain;
    map['hostType'] = hostType;
    map['siteUrls'] = siteUrls;
    final tenantIdValue = tenantId;
    if (tenantIdValue != null) {
      map['tenantId'] = tenantIdValue;
    }
    return map;
  }

  factory AgentDataSourceDataSourceConfigurationSharePointConfigurationSourceConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationSharePointConfigurationSourceConfiguration(
      authType: map['authType'] as String,
      credentialsSecretArn: map['credentialsSecretArn'] as String,
      domain: map['domain'] as String,
      hostType: map['hostType'] as String,
      siteUrls: (map['siteUrls'] as List).cast<String>(),
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}
