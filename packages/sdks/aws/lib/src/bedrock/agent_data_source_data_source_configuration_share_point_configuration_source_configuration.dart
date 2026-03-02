// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentDataSourceDataSourceConfigurationSharePointConfigurationSourceConfiguration {
  /// The supported authentication type to authenticate and connect to your SharePoint site. Valid values: `OAUTH2_CLIENT_CREDENTIALS`, `OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS`.
  final pulumi.Input<String> authType;
  /// The Amazon Resource Name of an AWS Secrets Manager secret that stores your authentication credentials for your SharePoint site. For more information on the key-value pairs that must be included in your secret, depending on your authentication type, see SharePoint connection configuration. Pattern: ^arn:aws(|-cn|-us-gov):secretsmanager:[a-z0-9-]{1,20}:([0-9]{12}|):secret:[a-zA-Z0-9!/_+=.@-]{1,512}$.
  final pulumi.Input<String> credentialsSecretArn;
  /// The domain of your SharePoint instance or site URL/URLs.
  final pulumi.Input<String> domain;
  /// The supported host type, whether online/cloud or server/on-premises. Valid values: `ONLINE`.
  final pulumi.Input<String> hostType;
  /// A list of one or more SharePoint site URLs.
  final pulumi.Input<List<String>> siteUrls;
  /// The identifier of your Microsoft 365 tenant.
  final pulumi.Input<String>? tenantId;

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
    return <String, dynamic>{
      'authType': authType,
      'credentialsSecretArn': credentialsSecretArn,
      'domain': domain,
      'hostType': hostType,
      'siteUrls': siteUrls,
      'tenantId': ?tenantId,
    };
  }

  factory AgentDataSourceDataSourceConfigurationSharePointConfigurationSourceConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationSharePointConfigurationSourceConfiguration(
      authType: (map['authType'] as String).input(),
      credentialsSecretArn: (map['credentialsSecretArn'] as String).input(),
      domain: (map['domain'] as String).input(),
      hostType: (map['hostType'] as String).input(),
      siteUrls: ((map['siteUrls'] as List).cast<String>()).input(),
      tenantId: map['tenantId'] == null ? null : ((map['tenantId'] as String).input()).input(),
    );
  }
}

