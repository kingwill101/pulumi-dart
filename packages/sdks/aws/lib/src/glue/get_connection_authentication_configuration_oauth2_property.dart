// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_authentication_configuration_oauth2_property_authorization_code_property.dart';
import 'get_connection_authentication_configuration_oauth2_property_oauth2_client_application.dart';
import 'get_connection_authentication_configuration_oauth2_property_oauth2_credential.dart';

class GetConnectionAuthenticationConfigurationOauth2Property {
  /// Authorization code properties. See `authorizationCodeProperties` Block for details.
  final pulumi.Input<List<GetConnectionAuthenticationConfigurationOauth2PropertyAuthorizationCodeProperty>> authorizationCodeProperties;
  /// OAuth2 client application. See `oauth2ClientApplication` Block for details.
  final pulumi.Input<List<GetConnectionAuthenticationConfigurationOauth2PropertyOauth2ClientApplication>> oauth2ClientApplications;
  /// OAuth2 credentials. See `oauth2Credentials` Block for details.
  final pulumi.Input<List<GetConnectionAuthenticationConfigurationOauth2PropertyOauth2Credential>> oauth2Credentials;
  /// OAuth2 grant type.
  final pulumi.Input<String> oauth2GrantType;
  /// URL of the provider's authentication server used to exchange an authorization code for an access token.
  final pulumi.Input<String> tokenUrl;
  /// Map of parameters to add to the token request.
  final pulumi.Input<Map<String, String>> tokenUrlParametersMap;

  /// Creates a new [GetConnectionAuthenticationConfigurationOauth2Property].
  /// [authorizationCodeProperties] Authorization code properties. See `authorizationCodeProperties` Block for details.
  /// [oauth2ClientApplications] OAuth2 client application. See `oauth2ClientApplication` Block for details.
  /// [oauth2Credentials] OAuth2 credentials. See `oauth2Credentials` Block for details.
  /// [oauth2GrantType] OAuth2 grant type.
  /// [tokenUrl] URL of the provider's authentication server used to exchange an authorization code for an access token.
  /// [tokenUrlParametersMap] Map of parameters to add to the token request.
  const GetConnectionAuthenticationConfigurationOauth2Property({
    required this.authorizationCodeProperties,
    required this.oauth2ClientApplications,
    required this.oauth2Credentials,
    required this.oauth2GrantType,
    required this.tokenUrl,
    required this.tokenUrlParametersMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationCodeProperties': pulumi.Input.mapInputValue<List<GetConnectionAuthenticationConfigurationOauth2PropertyAuthorizationCodeProperty>, List<Map<String, dynamic>>>(authorizationCodeProperties, (value) => pulumi.Input.encodeList<GetConnectionAuthenticationConfigurationOauth2PropertyAuthorizationCodeProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'oauth2ClientApplications': pulumi.Input.mapInputValue<List<GetConnectionAuthenticationConfigurationOauth2PropertyOauth2ClientApplication>, List<Map<String, dynamic>>>(oauth2ClientApplications, (value) => pulumi.Input.encodeList<GetConnectionAuthenticationConfigurationOauth2PropertyOauth2ClientApplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'oauth2Credentials': pulumi.Input.mapInputValue<List<GetConnectionAuthenticationConfigurationOauth2PropertyOauth2Credential>, List<Map<String, dynamic>>>(oauth2Credentials, (value) => pulumi.Input.encodeList<GetConnectionAuthenticationConfigurationOauth2PropertyOauth2Credential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'oauth2GrantType': oauth2GrantType,
      'tokenUrl': tokenUrl,
      'tokenUrlParametersMap': tokenUrlParametersMap,
    };
  }

  factory GetConnectionAuthenticationConfigurationOauth2Property.fromMap(Map<String, dynamic> map) {
    return GetConnectionAuthenticationConfigurationOauth2Property(
      authorizationCodeProperties: pulumi.Input.fromValue(pulumi.Input.decodeList<GetConnectionAuthenticationConfigurationOauth2PropertyAuthorizationCodeProperty>(map['authorizationCodeProperties']!, (value) => GetConnectionAuthenticationConfigurationOauth2PropertyAuthorizationCodeProperty.fromMap((value as Map).cast<String, dynamic>()))),
      oauth2ClientApplications: pulumi.Input.fromValue(pulumi.Input.decodeList<GetConnectionAuthenticationConfigurationOauth2PropertyOauth2ClientApplication>(map['oauth2ClientApplications']!, (value) => GetConnectionAuthenticationConfigurationOauth2PropertyOauth2ClientApplication.fromMap((value as Map).cast<String, dynamic>()))),
      oauth2Credentials: pulumi.Input.fromValue(pulumi.Input.decodeList<GetConnectionAuthenticationConfigurationOauth2PropertyOauth2Credential>(map['oauth2Credentials']!, (value) => GetConnectionAuthenticationConfigurationOauth2PropertyOauth2Credential.fromMap((value as Map).cast<String, dynamic>()))),
      oauth2GrantType: pulumi.Input.fromValue(map['oauth2GrantType'] as String),
      tokenUrl: pulumi.Input.fromValue(map['tokenUrl'] as String),
      tokenUrlParametersMap: pulumi.Input.fromValue((map['tokenUrlParametersMap'] as Map).cast<String, String>()),
    );
  }
}
