// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClientCredentialsResponse {
  /// The authority URL used for authentication.
  final pulumi.Input<String?>? authorityUrl;
  /// The content of the certificate used for authentication.
  final pulumi.Input<String?>? certificate;
  /// The Client ID/Application ID
  final pulumi.Input<String?>? clientId;
  /// The client secret.
  final pulumi.Input<String?>? clientSecret;
  /// Is it using certificate to authenticate. If false then use client secret.
  final pulumi.Input<bool?>? isCertAuth;
  /// Resource Group.
  final pulumi.Input<String?>? resourceGroup;
  /// The resource the service principal/app has access to.
  final pulumi.Input<String?>? resourceUri;
  /// Indicates which identity to use to authenticate service data access to customer's storage.
  final pulumi.Input<String?>? serviceDataAccessAuthIdentity;
  /// Subscription ID.
  final pulumi.Input<String?>? subscriptionId;
  /// The ID of the tenant the service principal/app belongs to.
  final pulumi.Input<String?>? tenantId;
  /// The thumbprint of the certificate above.
  final pulumi.Input<String?>? thumbprint;

  /// Creates a new [ClientCredentialsResponse].
  /// [authorityUrl] The authority URL used for authentication.
  /// [certificate] The content of the certificate used for authentication.
  /// [clientId] The Client ID/Application ID
  /// [clientSecret] The client secret.
  /// [isCertAuth] Is it using certificate to authenticate. If false then use client secret.
  /// [resourceGroup] Resource Group.
  /// [resourceUri] The resource the service principal/app has access to.
  /// [serviceDataAccessAuthIdentity] Indicates which identity to use to authenticate service data access to customer's storage.
  /// [subscriptionId] Subscription ID.
  /// [tenantId] The ID of the tenant the service principal/app belongs to.
  /// [thumbprint] The thumbprint of the certificate above.
  const ClientCredentialsResponse({
    this.authorityUrl,
    this.certificate,
    this.clientId,
    this.clientSecret,
    this.isCertAuth,
    this.resourceGroup,
    this.resourceUri,
    this.serviceDataAccessAuthIdentity,
    this.subscriptionId,
    this.tenantId,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorityUrl': ?authorityUrl,
      'certificate': ?certificate,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'isCertAuth': ?isCertAuth,
      'resourceGroup': ?resourceGroup,
      'resourceUri': ?resourceUri,
      'serviceDataAccessAuthIdentity': ?serviceDataAccessAuthIdentity,
      'subscriptionId': ?subscriptionId,
      'tenantId': ?tenantId,
      'thumbprint': ?thumbprint,
    };
  }

  factory ClientCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return ClientCredentialsResponse(
      authorityUrl: (() { final guardedValue = map['authorityUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isCertAuth: (() { final guardedValue = map['isCertAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceUri: (() { final guardedValue = map['resourceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceDataAccessAuthIdentity: (() { final guardedValue = map['serviceDataAccessAuthIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
