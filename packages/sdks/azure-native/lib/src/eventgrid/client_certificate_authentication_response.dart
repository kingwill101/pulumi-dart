// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The certificate authentication properties for the client.
class ClientCertificateAuthenticationResponse {
  /// The list of thumbprints that are allowed during client authentication. This property is required only if the validationScheme is 'ThumbprintMatch'.
  final pulumi.Input<List<String>>? allowedThumbprints;
  /// The validation scheme used to authenticate the client. Default value is SubjectMatchesAuthenticationName.
  final pulumi.Input<String>? validationScheme;

  /// Creates a new [ClientCertificateAuthenticationResponse].
  /// [allowedThumbprints] The list of thumbprints that are allowed during client authentication. This property is required only if the validationScheme is 'ThumbprintMatch'.
  /// [validationScheme] The validation scheme used to authenticate the client. Default value is SubjectMatchesAuthenticationName.
  ClientCertificateAuthenticationResponse({
    this.allowedThumbprints,
    this.validationScheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedThumbprints': ?allowedThumbprints,
      'validationScheme': ?validationScheme,
    };
  }

  factory ClientCertificateAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return ClientCertificateAuthenticationResponse(
      allowedThumbprints: map['allowedThumbprints'] == null ? null : ((map['allowedThumbprints']! as List).cast<String>()).input(),
      validationScheme: map['validationScheme'] == null ? null : (map['validationScheme']! as String).input(),
    );
  }
}

