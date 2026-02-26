// ignore_for_file: unused_element, unnecessary_cast

import '../event_connection_auth_parameters_api_key/event_connection_auth_parameters_api_key.dart';
import '../event_connection_auth_parameters_basic/event_connection_auth_parameters_basic.dart';
import '../event_connection_auth_parameters_invocation_http_parameters/event_connection_auth_parameters_invocation_http_parameters.dart';
import '../event_connection_auth_parameters_oauth/event_connection_auth_parameters_oauth.dart';

class EventConnectionAuthParameters {
  /// Parameters used for API_KEY authorization. An API key to include in the header for each authentication request. A maximum of 1 are allowed. Conflicts with <span pulumi-lang-nodejs="`basic`" pulumi-lang-dotnet="`Basic`" pulumi-lang-go="`basic`" pulumi-lang-python="`basic`" pulumi-lang-yaml="`basic`" pulumi-lang-java="`basic`">`basic`</span> and <span pulumi-lang-nodejs="`oauth`" pulumi-lang-dotnet="`Oauth`" pulumi-lang-go="`oauth`" pulumi-lang-python="`oauth`" pulumi-lang-yaml="`oauth`" pulumi-lang-java="`oauth`">`oauth`</span>. Documented below.
  final EventConnectionAuthParametersApiKey? apiKey;

  /// Parameters used for BASIC authorization. A maximum of 1 are allowed. Conflicts with <span pulumi-lang-nodejs="`apiKey`" pulumi-lang-dotnet="`ApiKey`" pulumi-lang-go="`apiKey`" pulumi-lang-python="`api_key`" pulumi-lang-yaml="`apiKey`" pulumi-lang-java="`apiKey`">`api_key`</span> and <span pulumi-lang-nodejs="`oauth`" pulumi-lang-dotnet="`Oauth`" pulumi-lang-go="`oauth`" pulumi-lang-python="`oauth`" pulumi-lang-yaml="`oauth`" pulumi-lang-java="`oauth`">`oauth`</span>. Documented below.
  final EventConnectionAuthParametersBasic? basic;

  /// Invocation Http Parameters are additional credentials used to sign each Invocation of the ApiDestination created from this Connection. If the ApiDestination Rule Target has additional HttpParameters, the values will be merged together, with the Connection Invocation Http Parameters taking precedence. Secret values are stored and managed by AWS Secrets Manager. A maximum of 1 are allowed. Documented below.
  final EventConnectionAuthParametersInvocationHttpParameters?
      invocationHttpParameters;

  /// Parameters used for OAUTH_CLIENT_CREDENTIALS authorization. A maximum of 1 are allowed. Conflicts with <span pulumi-lang-nodejs="`basic`" pulumi-lang-dotnet="`Basic`" pulumi-lang-go="`basic`" pulumi-lang-python="`basic`" pulumi-lang-yaml="`basic`" pulumi-lang-java="`basic`">`basic`</span> and <span pulumi-lang-nodejs="`apiKey`" pulumi-lang-dotnet="`ApiKey`" pulumi-lang-go="`apiKey`" pulumi-lang-python="`api_key`" pulumi-lang-yaml="`apiKey`" pulumi-lang-java="`apiKey`">`api_key`</span>. Documented below.
  final EventConnectionAuthParametersOauth? oauth;

  EventConnectionAuthParameters({
    this.apiKey,
    this.basic,
    this.invocationHttpParameters,
    this.oauth,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiKeyValue = apiKey;
    if (apiKeyValue != null) {
      map['apiKey'] = apiKeyValue.toMap();
    }
    final basicValue = basic;
    if (basicValue != null) {
      map['basic'] = basicValue.toMap();
    }
    final invocationHttpParametersValue = invocationHttpParameters;
    if (invocationHttpParametersValue != null) {
      map['invocationHttpParameters'] = invocationHttpParametersValue.toMap();
    }
    final oauthValue = oauth;
    if (oauthValue != null) {
      map['oauth'] = oauthValue.toMap();
    }
    return map;
  }

  factory EventConnectionAuthParameters.fromMap(Map<String, dynamic> map) {
    return EventConnectionAuthParameters(
      apiKey: map['apiKey'] == null
          ? null
          : EventConnectionAuthParametersApiKey.fromMap(
              (map['apiKey'] as Map).cast<String, dynamic>()),
      basic: map['basic'] == null
          ? null
          : EventConnectionAuthParametersBasic.fromMap(
              (map['basic'] as Map).cast<String, dynamic>()),
      invocationHttpParameters: map['invocationHttpParameters'] == null
          ? null
          : EventConnectionAuthParametersInvocationHttpParameters.fromMap(
              (map['invocationHttpParameters'] as Map).cast<String, dynamic>()),
      oauth: map['oauth'] == null
          ? null
          : EventConnectionAuthParametersOauth.fromMap(
              (map['oauth'] as Map).cast<String, dynamic>()),
    );
  }
}
