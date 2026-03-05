// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The certificate authentication properties for the client.
class ClientCertificateAuthentication {
  /// The list of thumbprints that are allowed during client authentication. This property is required only if the validationScheme is 'ThumbprintMatch'.
  final pulumi.Input<List<String>>? allowedThumbprints;
  /// The validation scheme used to authenticate the client. Default value is SubjectMatchesAuthenticationName.
  final pulumi.Input<String>? validationScheme;

  /// Creates a new [ClientCertificateAuthentication].
  /// [allowedThumbprints] The list of thumbprints that are allowed during client authentication. This property is required only if the validationScheme is 'ThumbprintMatch'.
  /// [validationScheme] The validation scheme used to authenticate the client. Default value is SubjectMatchesAuthenticationName.
  ClientCertificateAuthentication({
    this.allowedThumbprints,
    this.validationScheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedThumbprints': ?allowedThumbprints,
      'validationScheme': ?validationScheme,
    };
  }

  factory ClientCertificateAuthentication.fromMap(Map<String, dynamic> map) {
    return ClientCertificateAuthentication(
      allowedThumbprints: (() { final guardedValue = map['allowedThumbprints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      validationScheme: (() { final guardedValue = map['validationScheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

