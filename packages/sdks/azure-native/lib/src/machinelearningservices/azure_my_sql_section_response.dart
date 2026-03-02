// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AzureMySqlSectionResponse {
  /// The authority URL used for authentication.
  final pulumi.Input<String>? authorityUrl;
  /// The content of the certificate used for authentication.
  final pulumi.Input<String>? certificate;
  /// The Client ID/Application ID
  final pulumi.Input<String>? clientId;
  /// The client secret.
  final pulumi.Input<String>? clientSecret;
  /// Sql Authentication type.
  final pulumi.Input<String>? credentialType;
  /// The Azure SQL database name.
  final pulumi.Input<String>? databaseName;
  /// The server host endpoint.
  final pulumi.Input<String>? endpoint;
  /// Is it using certificate to authenticate. If false then use client secret.
  final pulumi.Input<bool>? isCertAuth;
  /// / The Azure SQL port number.
  final pulumi.Input<String>? portNumber;
  /// Resource Group.
  final pulumi.Input<String>? resourceGroup;
  /// The resource the service principal/app has access to.
  final pulumi.Input<String>? resourceUri;
  /// The Azure SQL server name.
  final pulumi.Input<String>? serverName;
  /// Indicates which identity to use to authenticate service data access to customer's storage.
  final pulumi.Input<String>? serviceDataAccessAuthIdentity;
  /// Subscription ID.
  final pulumi.Input<String>? subscriptionId;
  /// The ID of the tenant the service principal/app belongs to.
  final pulumi.Input<String>? tenantId;
  /// The thumbprint of the certificate above.
  final pulumi.Input<String>? thumbprint;
  /// The Azure SQL user id.
  final pulumi.Input<String>? userId;
  /// The Azure SQL user password.
  final pulumi.Input<String>? userPassword;

  /// Creates a new [AzureMySqlSectionResponse].
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
  AzureMySqlSectionResponse({
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

  factory AzureMySqlSectionResponse.fromMap(Map<String, dynamic> map) {
    return AzureMySqlSectionResponse(
      authorityUrl: map['authorityUrl'] == null ? null : (map['authorityUrl'] as String).input(),
      certificate: map['certificate'] == null ? null : (map['certificate'] as String).input(),
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret'] as String).input(),
      credentialType: map['credentialType'] == null ? null : (map['credentialType'] as String).input(),
      databaseName: map['databaseName'] == null ? null : (map['databaseName'] as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      isCertAuth: map['isCertAuth'] == null ? null : (map['isCertAuth'] as bool).input(),
      portNumber: map['portNumber'] == null ? null : (map['portNumber'] as String).input(),
      resourceGroup: map['resourceGroup'] == null ? null : (map['resourceGroup'] as String).input(),
      resourceUri: map['resourceUri'] == null ? null : (map['resourceUri'] as String).input(),
      serverName: map['serverName'] == null ? null : (map['serverName'] as String).input(),
      serviceDataAccessAuthIdentity: map['serviceDataAccessAuthIdentity'] == null ? null : (map['serviceDataAccessAuthIdentity'] as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint'] as String).input(),
      userId: map['userId'] == null ? null : (map['userId'] as String).input(),
      userPassword: map['userPassword'] == null ? null : (map['userPassword'] as String).input(),
    );
  }
}

