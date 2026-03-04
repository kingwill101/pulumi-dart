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
  TokenCredentialsPropertiesResponse({this.certificates, this.passwords});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates':
          ?pulumi.Input.mapOptionalInputValue<
            List<TokenCertificateResponse>,
            List<Map<String, dynamic>>
          >(
            certificates,
            (value) =>
                pulumi.Input.encodeList<
                  TokenCertificateResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'passwords':
          ?pulumi.Input.mapOptionalInputValue<
            List<TokenPasswordResponse>,
            List<Map<String, dynamic>>
          >(
            passwords,
            (value) =>
                pulumi.Input.encodeList<
                  TokenPasswordResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory TokenCredentialsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TokenCredentialsPropertiesResponse(
      certificates: (() {
        final guardedValue = map['certificates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TokenCertificateResponse>(
            guardedValue,
            (value) => TokenCertificateResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      passwords: (() {
        final guardedValue = map['passwords'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TokenPasswordResponse>(
            guardedValue,
            (value) => TokenPasswordResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
