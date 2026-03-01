// ignore_for_file: unused_element, unnecessary_cast


class AzureSqlDatabaseSectionResponse {
  /// The authority URL used for authentication.
  final String? authorityUrl;
  /// The content of the certificate used for authentication.
  final String? certificate;
  /// The Client ID/Application ID
  final String? clientId;
  /// The client secret.
  final String? clientSecret;
  /// Sql Authentication type.
  final String? credentialType;
  /// The Azure SQL database name.
  final String? databaseName;
  /// The server host endpoint.
  final String? endpoint;
  /// Is it using certificate to authenticate. If false then use client secret.
  final bool? isCertAuth;
  /// / The Azure SQL port number.
  final String? portNumber;
  /// Resource Group.
  final String? resourceGroup;
  /// The resource the service principal/app has access to.
  final String? resourceUri;
  /// The Azure SQL server name.
  final String? serverName;
  /// Indicates which identity to use to authenticate service data access to customer's storage.
  final String? serviceDataAccessAuthIdentity;
  /// Subscription ID.
  final String? subscriptionId;
  /// The ID of the tenant the service principal/app belongs to.
  final String? tenantId;
  /// The thumbprint of the certificate above.
  final String? thumbprint;
  /// The Azure SQL user id.
  final String? userId;
  /// The Azure SQL user password.
  final String? userPassword;

  /// Creates a new [AzureSqlDatabaseSectionResponse].
  /// [authorityUrl] The authority URL used for authentication.
  /// [certificate] The content of the certificate used for authentication.
  /// [clientId] The Client ID/Application ID
  /// [clientSecret] The client secret.
  /// [credentialType] Sql Authentication type.
  /// [databaseName] The Azure SQL database name.
  /// [endpoint] The server host endpoint.
  /// [isCertAuth] Is it using certificate to authenticate. If false then use client secret.
  /// [portNumber] / The Azure SQL port number.
  /// [resourceGroup] Resource Group.
  /// [resourceUri] The resource the service principal/app has access to.
  /// [serverName] The Azure SQL server name.
  /// [serviceDataAccessAuthIdentity] Indicates which identity to use to authenticate service data access to customer's storage.
  /// [subscriptionId] Subscription ID.
  /// [tenantId] The ID of the tenant the service principal/app belongs to.
  /// [thumbprint] The thumbprint of the certificate above.
  /// [userId] The Azure SQL user id.
  /// [userPassword] The Azure SQL user password.
  AzureSqlDatabaseSectionResponse({
    this.authorityUrl,
    this.certificate,
    this.clientId,
    this.clientSecret,
    this.credentialType,
    this.databaseName,
    this.endpoint,
    this.isCertAuth,
    this.portNumber,
    this.resourceGroup,
    this.resourceUri,
    this.serverName,
    this.serviceDataAccessAuthIdentity,
    this.subscriptionId,
    this.tenantId,
    this.thumbprint,
    this.userId,
    this.userPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorityUrl': ?authorityUrl,
      'certificate': ?certificate,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'credentialType': ?credentialType,
      'databaseName': ?databaseName,
      'endpoint': ?endpoint,
      'isCertAuth': ?isCertAuth,
      'portNumber': ?portNumber,
      'resourceGroup': ?resourceGroup,
      'resourceUri': ?resourceUri,
      'serverName': ?serverName,
      'serviceDataAccessAuthIdentity': ?serviceDataAccessAuthIdentity,
      'subscriptionId': ?subscriptionId,
      'tenantId': ?tenantId,
      'thumbprint': ?thumbprint,
      'userId': ?userId,
      'userPassword': ?userPassword,
    };
  }

  factory AzureSqlDatabaseSectionResponse.fromMap(Map<String, dynamic> map) {
    return AzureSqlDatabaseSectionResponse(
      authorityUrl: map['authorityUrl'] == null ? null : map['authorityUrl'] as String,
      certificate: map['certificate'] == null ? null : map['certificate'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      credentialType: map['credentialType'] == null ? null : map['credentialType'] as String,
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      isCertAuth: map['isCertAuth'] == null ? null : map['isCertAuth'] as bool,
      portNumber: map['portNumber'] == null ? null : map['portNumber'] as String,
      resourceGroup: map['resourceGroup'] == null ? null : map['resourceGroup'] as String,
      resourceUri: map['resourceUri'] == null ? null : map['resourceUri'] as String,
      serverName: map['serverName'] == null ? null : map['serverName'] as String,
      serviceDataAccessAuthIdentity: map['serviceDataAccessAuthIdentity'] == null ? null : map['serviceDataAccessAuthIdentity'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
      userId: map['userId'] == null ? null : map['userId'] as String,
      userPassword: map['userPassword'] == null ? null : map['userPassword'] as String,
    );
  }
}

