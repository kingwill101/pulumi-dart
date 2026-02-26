// ignore_for_file: unused_element, unnecessary_cast

import '../workforce_pool_provider_extra_attributes_oauth2_client_client_secret/workforce_pool_provider_extra_attributes_oauth2_client_client_secret.dart';
import '../workforce_pool_provider_extra_attributes_oauth2_client_query_parameters/workforce_pool_provider_extra_attributes_oauth2_client_query_parameters.dart';

class WorkforcePoolProviderExtraAttributesOauth2Client {
  /// Represents the IdP and type of claims that should be fetched.
  /// * AZURE_AD_GROUPS_MAIL: Used to get the user's group claims from the Azure AD identity provider using configuration provided
  /// in ExtraAttributesOAuth2Client and 'mail' property of the 'microsoft.graph.group' object is used for claim mapping.
  /// See https://learn.microsoft.com/en-us/graph/api/resources/group?view=graph-rest-1.0#properties for more details on
  /// 'microsoft.graph.group' properties. The attributes obtained from idntity provider are mapped to 'assertion.groups'.
  /// * AZURE_AD_GROUPS_ID:  Used to get the user's group claims from the Azure AD identity provider
  /// using configuration provided in ExtraAttributesOAuth2Client and 'id'
  /// property of the 'microsoft.graph.group' object is used for claim mapping. See
  /// https://learn.microsoft.com/en-us/graph/api/resources/group?view=graph-rest-1.0#properties
  /// for more details on 'microsoft.graph.group' properties. The
  /// group IDs obtained from Azure AD are present in 'assertion.groups' for
  /// OIDC providers and 'assertion.attributes.groups' for SAML providers for
  /// attribute mapping. Possible values: ["AZURE_AD_GROUPS_MAIL", "AZURE_AD_GROUPS_ID"]
  final String attributesType;

  /// The OAuth 2.0 client ID for retrieving extra attributes from the identity provider. Required to get the Access Token using client credentials grant flow.
  final String clientId;

  /// The OAuth 2.0 client secret for retrieving extra attributes from the identity provider. Required to get the Access Token using client credentials grant flow.
  final WorkforcePoolProviderExtraAttributesOauth2ClientClientSecret
      clientSecret;

  /// The OIDC identity provider's issuer URI. Must be a valid URI using the 'https' scheme. Required to get the OIDC discovery document.
  final String issuerUri;

  /// Represents the parameters to control which claims are fetched from an IdP.
  final WorkforcePoolProviderExtraAttributesOauth2ClientQueryParameters?
      queryParameters;

  WorkforcePoolProviderExtraAttributesOauth2Client({
    required this.attributesType,
    required this.clientId,
    required this.clientSecret,
    required this.issuerUri,
    this.queryParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attributesType'] = attributesType;
    map['clientId'] = clientId;
    map['clientSecret'] = clientSecret.toMap();
    map['issuerUri'] = issuerUri;
    final queryParametersValue = queryParameters;
    if (queryParametersValue != null) {
      map['queryParameters'] = queryParametersValue.toMap();
    }
    return map;
  }

  factory WorkforcePoolProviderExtraAttributesOauth2Client.fromMap(
      Map<String, dynamic> map) {
    return WorkforcePoolProviderExtraAttributesOauth2Client(
      attributesType: map['attributesType'] as String,
      clientId: map['clientId'] as String,
      clientSecret:
          WorkforcePoolProviderExtraAttributesOauth2ClientClientSecret.fromMap(
              (map['clientSecret'] as Map).cast<String, dynamic>()),
      issuerUri: map['issuerUri'] as String,
      queryParameters: map['queryParameters'] == null
          ? null
          : WorkforcePoolProviderExtraAttributesOauth2ClientQueryParameters
              .fromMap((map['queryParameters'] as Map).cast<String, dynamic>()),
    );
  }
}
