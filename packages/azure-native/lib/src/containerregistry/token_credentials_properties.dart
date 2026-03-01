// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'token_certificate.dart';
import 'token_password.dart';

/// The properties of the credentials that can be used for authenticating the token.
class TokenCredentialsProperties {
  final List<TokenCertificate>? certificates;
  final List<TokenPassword>? passwords;

  /// Creates a new [TokenCredentialsProperties].
  /// [certificates] Optional.
  /// [passwords] Optional.
  TokenCredentialsProperties({
    this.certificates,
    this.passwords,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': ?certificates == null ? null : pulumi.Input.encodeList<TokenCertificate, Map<String, dynamic>>(certificates!, (value) => value.toMap()),
      'passwords': ?passwords == null ? null : pulumi.Input.encodeList<TokenPassword, Map<String, dynamic>>(passwords!, (value) => value.toMap()),
    };
  }

  factory TokenCredentialsProperties.fromMap(Map<String, dynamic> map) {
    return TokenCredentialsProperties(
      certificates: map['certificates'] == null ? null : pulumi.Input.decodeList<TokenCertificate>(map['certificates'], (value) => TokenCertificate.fromMap((value as Map).cast<String, dynamic>())),
      passwords: map['passwords'] == null ? null : pulumi.Input.decodeList<TokenPassword>(map['passwords'], (value) => TokenPassword.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

