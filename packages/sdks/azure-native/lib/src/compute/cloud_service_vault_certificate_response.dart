// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a single certificate reference in a Key Vault, and where the certificate should reside on the role instance.
class CloudServiceVaultCertificateResponse {
  /// This is the URL of a certificate that has been uploaded to Key Vault as a secret.
  final pulumi.Input<String>? certificateUrl;

  /// Creates a new [CloudServiceVaultCertificateResponse].
  /// [certificateUrl] This is the URL of a certificate that has been uploaded to Key Vault as a secret.
  const CloudServiceVaultCertificateResponse({
    this.certificateUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateUrl': ?certificateUrl,
    };
  }

  factory CloudServiceVaultCertificateResponse.fromMap(Map<String, dynamic> map) {
    return CloudServiceVaultCertificateResponse(
      certificateUrl: (() { final guardedValue = map['certificateUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

