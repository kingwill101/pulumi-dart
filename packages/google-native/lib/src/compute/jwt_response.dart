// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jwt_header_response.dart';

/// [Deprecated] JWT configuration for origin authentication. JWT configuration for origin authentication.
class JwtResponse {
  /// A JWT containing any of these audiences will be accepted. The service name will be accepted if audiences is empty. Examples: bookstore_android.apps.googleusercontent.com, bookstore_web.apps.googleusercontent.com
  final List<String> audiences;

  /// Identifies the issuer that issued the JWT, which is usually a URL or an email address. Examples: https://securetoken.google.com, 1234567-compute@developer.gserviceaccount.com
  final String issuer;

  /// The provider's public key set to validate the signature of the JWT.
  final String jwksPublicKeys;

  /// jwt_headers and jwt_params define where to extract the JWT from an HTTP request. If no explicit location is specified, the following default locations are tried in order: 1. The Authorization header using the Bearer schema. See `here `_. Example: Authorization: Bearer . 2. `access_token` query parameter. See `this `_ Multiple JWTs can be verified for a request. Each JWT has to be extracted from the locations its issuer specified or from the default locations. This field is set if JWT is sent in a request header. This field specifies the header name. For example, if `header=x-goog-iap-jwt-assertion`, the header format will be x-goog-iap-jwt-assertion: .
  final List<JwtHeaderResponse> jwtHeaders;

  /// This field is set if JWT is sent in a query parameter. This field specifies the query parameter name. For example, if jwt_params[0] is jwt_token, the JWT format in the query parameter is /path?jwt_token=.
  final List<String> jwtParams;

  /// Creates a new [JwtResponse].
  /// [audiences] A JWT containing any of these audiences will be accepted. The service name will be accepted if audiences is empty. Examples: bookstore_android.apps.googleusercontent.com, bookstore_web.apps.googleusercontent.com
  /// [issuer] Identifies the issuer that issued the JWT, which is usually a URL or an email address. Examples: https://securetoken.google.com, 1234567-compute@developer.gserviceaccount.com
  /// [jwksPublicKeys] The provider's public key set to validate the signature of the JWT.
  /// [jwtHeaders] jwt_headers and jwt_params define where to extract the JWT from an HTTP request. If no explicit location is specified, the following default locations are tried in order: 1. The Authorization header using the Bearer schema. See `here `_. Example: Authorization: Bearer . 2. `access_token` query parameter. See `this `_ Multiple JWTs can be verified for a request. Each JWT has to be extracted from the locations its issuer specified or from the default locations. This field is set if JWT is sent in a request header. This field specifies the header name. For example, if `header=x-goog-iap-jwt-assertion`, the header format will be x-goog-iap-jwt-assertion: .
  /// [jwtParams] This field is set if JWT is sent in a query parameter. This field specifies the query parameter name. For example, if jwt_params[0] is jwt_token, the JWT format in the query parameter is /path?jwt_token=.
  JwtResponse({
    required this.audiences,
    required this.issuer,
    required this.jwksPublicKeys,
    required this.jwtHeaders,
    required this.jwtParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audiences': audiences,
      'issuer': issuer,
      'jwksPublicKeys': jwksPublicKeys,
      'jwtHeaders':
          pulumi.Input.encodeList<JwtHeaderResponse, Map<String, dynamic>>(
            jwtHeaders,
            (value) => value.toMap(),
          ),
      'jwtParams': jwtParams,
    };
  }

  factory JwtResponse.fromMap(Map<String, dynamic> map) {
    return JwtResponse(
      audiences: (map['audiences'] as List).cast<String>(),
      issuer: map['issuer'] as String,
      jwksPublicKeys: map['jwksPublicKeys'] as String,
      jwtHeaders: pulumi.Input.decodeList<JwtHeaderResponse>(
        map['jwtHeaders'],
        (value) =>
            JwtHeaderResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
      jwtParams: (map['jwtParams'] as List).cast<String>(),
    );
  }
}
