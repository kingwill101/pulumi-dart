// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AzureSqlDatabaseSectionResponse {
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
  const AzureSqlDatabaseSectionResponse({
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
      authorityUrl: (() { final guardedValue = map['authorityUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialType: (() { final guardedValue = map['credentialType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isCertAuth: (() { final guardedValue = map['isCertAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      portNumber: (() { final guardedValue = map['portNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceUri: (() { final guardedValue = map['resourceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceDataAccessAuthIdentity: (() { final guardedValue = map['serviceDataAccessAuthIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userPassword: (() { final guardedValue = map['userPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
