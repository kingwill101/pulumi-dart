// ignore_for_file: unused_element, unnecessary_cast


class ConnectionAzure {
  /// (Output)
  /// The name of the Azure Active Directory Application.
  final String? application;
  /// (Output)
  /// The client id of the Azure Active Directory Application.
  final String? clientId;
  /// The id of customer's directory that host the data.
  final String customerTenantId;
  /// The Azure Application (client) ID where the federated credentials will be hosted.
  final String? federatedApplicationClientId;
  /// (Output)
  /// A unique Google-owned and Google-generated identity for the Connection. This identity will be used to access the user's Azure Active Directory Application.
  final String? identity;
  /// (Output)
  /// The object id of the Azure Active Directory Application.
  final String? objectId;
  /// (Output)
  /// The URL user will be redirected to after granting consent during connection setup.
  final String? redirectUri;

  /// Creates a new [ConnectionAzure].
  /// [application] (Output)
  /// [clientId] (Output)
  /// [customerTenantId] The id of customer's directory that host the data.
  /// [federatedApplicationClientId] The Azure Application (client) ID where the federated credentials will be hosted.
  /// [identity] (Output)
  /// [objectId] (Output)
  /// [redirectUri] (Output)
  ConnectionAzure({
    this.application,
    this.clientId,
    required this.customerTenantId,
    this.federatedApplicationClientId,
    this.identity,
    this.objectId,
    this.redirectUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'application': ?application,
      'clientId': ?clientId,
      'customerTenantId': customerTenantId,
      'federatedApplicationClientId': ?federatedApplicationClientId,
      'identity': ?identity,
      'objectId': ?objectId,
      'redirectUri': ?redirectUri,
    };
  }

  factory ConnectionAzure.fromMap(Map<String, dynamic> map) {
    return ConnectionAzure(
      application: map['application'] == null ? null : map['application'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      customerTenantId: map['customerTenantId'] as String,
      federatedApplicationClientId: map['federatedApplicationClientId'] == null ? null : map['federatedApplicationClientId'] as String,
      identity: map['identity'] == null ? null : map['identity'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      redirectUri: map['redirectUri'] == null ? null : map['redirectUri'] as String,
    );
  }
}

