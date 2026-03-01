// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'token_certificate_response.dart';
import 'token_password_response.dart';

/// The properties of the credentials that can be used for authenticating the token.
class TokenCredentialsPropertiesResponse {
  final List<TokenCertificateResponse>? certificates;
  final List<TokenPasswordResponse>? passwords;

  /// Creates a new [TokenCredentialsPropertiesResponse].
  /// [certificates] Optional.
  /// [passwords] Optional.
  TokenCredentialsPropertiesResponse({
    this.certificates,
    this.passwords,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': ?certificates == null ? null : pulumi.Input.encodeList<TokenCertificateResponse, Map<String, dynamic>>(certificates!, (value) => value.toMap()),
      'passwords': ?passwords == null ? null : pulumi.Input.encodeList<TokenPasswordResponse, Map<String, dynamic>>(passwords!, (value) => value.toMap()),
    };
  }

  factory TokenCredentialsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TokenCredentialsPropertiesResponse(
      certificates: map['certificates'] == null ? null : pulumi.Input.decodeList<TokenCertificateResponse>(map['certificates'], (value) => TokenCertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
      passwords: map['passwords'] == null ? null : pulumi.Input.decodeList<TokenPasswordResponse>(map['passwords'], (value) => TokenPasswordResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

