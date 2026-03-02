// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'token_certificate_response.dart';
import 'token_password_response.dart';

/// The properties of the credentials that can be used for authenticating the token.
class TokenCredentialsPropertiesResponse {
  final pulumi.Input<List<TokenCertificateResponse>>? certificates;
  final pulumi.Input<List<TokenPasswordResponse>>? passwords;

  /// Creates a new [TokenCredentialsPropertiesResponse].
  /// [certificates] Optional.
  /// [passwords] Optional.
  TokenCredentialsPropertiesResponse({
    this.certificates,
    this.passwords,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': ?pulumi.Input.mapOptionalInputValue<List<TokenCertificateResponse>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<TokenCertificateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'passwords': ?pulumi.Input.mapOptionalInputValue<List<TokenPasswordResponse>, List<Map<String, dynamic>>>(passwords, (value) => pulumi.Input.encodeList<TokenPasswordResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TokenCredentialsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TokenCredentialsPropertiesResponse(
      certificates: map['certificates'] == null ? null : (pulumi.Input.decodeList<TokenCertificateResponse>(map['certificates'], (value) => TokenCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      passwords: map['passwords'] == null ? null : (pulumi.Input.decodeList<TokenPasswordResponse>(map['passwords'], (value) => TokenPasswordResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

