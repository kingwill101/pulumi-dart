// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'jwt_location_response.dart';

/// Configuration for an authentication provider, including support for [JSON Web Token (JWT)](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).
class AuthProviderResponse {
  /// The list of JWT [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3). that are allowed to access. A JWT containing any of these audiences will be accepted. When this setting is absent, JWTs with audiences: - "https://[service.name]/[google.protobuf.Api.name]" - "https://[service.name]/" will be accepted. For example, if no audiences are in the setting, LibraryService API will accept JWTs with the following audiences: - https://library-example.googleapis.com/google.example.library.v1.LibraryService - https://library-example.googleapis.com/ Example: audiences: bookstore_android.apps.googleusercontent.com, bookstore_web.apps.googleusercontent.com
  final String audiences;

  /// Redirect URL if JWT token is required but not present or is expired. Implement authorizationUrl of securityDefinitions in OpenAPI spec.
  final String authorizationUrl;

  /// Identifies the principal that issued the JWT. See https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.1 Usually a URL or an email address. Example: https://securetoken.google.com Example: 1234567-compute@developer.gserviceaccount.com
  final String issuer;

  /// URL of the provider's public key set to validate signature of the JWT. See [OpenID Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html#ProviderMetadata). Optional if the key set document: - can be retrieved from [OpenID Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html) of the issuer. - can be inferred from the email domain of the issuer (e.g. a Google service account). Example: https://www.googleapis.com/oauth2/v1/certs
  final String jwksUri;

  /// Defines the locations to extract the JWT. For now it is only used by the Cloud Endpoints to store the OpenAPI extension [x-google-jwt-locations] (https://cloud.google.com/endpoints/docs/openapi/openapi-extensions#x-google-jwt-locations) JWT locations can be one of HTTP headers, URL query parameters or cookies. The rule is that the first match wins. If not specified, default to use following 3 locations: 1) Authorization: Bearer 2) x-goog-iap-jwt-assertion 3) access_token query parameter Default locations can be specified as followings: jwt_locations: - header: Authorization value_prefix: "Bearer " - header: x-goog-iap-jwt-assertion - query: access_token
  final List<JwtLocationResponse> jwtLocations;

  AuthProviderResponse({
    required this.audiences,
    required this.authorizationUrl,
    required this.issuer,
    required this.jwksUri,
    required this.jwtLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['audiences'] = audiences;
    map['authorizationUrl'] = authorizationUrl;
    map['issuer'] = issuer;
    map['jwksUri'] = jwksUri;
    map['jwtLocations'] =
        Input.encodeList<JwtLocationResponse, Map<String, dynamic>>(
            jwtLocations, (value) => value.toMap());
    return map;
  }

  factory AuthProviderResponse.fromMap(Map<String, dynamic> map) {
    return AuthProviderResponse(
      audiences: map['audiences'] as String,
      authorizationUrl: map['authorizationUrl'] as String,
      issuer: map['issuer'] as String,
      jwksUri: map['jwksUri'] as String,
      jwtLocations: Input.decodeList<JwtLocationResponse>(
          map['jwtLocations'],
          (value) => JwtLocationResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
