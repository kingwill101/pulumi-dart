// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_certificate_properties_response.dart';

/// The TLS properties of the connected registry login server.
class TlsPropertiesResponse {
  /// The certificate used to configure HTTPS for the login server.
  final pulumi.Input<TlsCertificatePropertiesResponse> certificate;
  /// Indicates whether HTTPS is enabled for the login server.
  final pulumi.Input<String> status;

  /// Creates a new [TlsPropertiesResponse].
  /// [certificate] The certificate used to configure HTTPS for the login server.
  /// [status] Indicates whether HTTPS is enabled for the login server.
  const TlsPropertiesResponse({
    required this.certificate,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': pulumi.Input.mapInputValue<TlsCertificatePropertiesResponse, Map<String, dynamic>>(certificate, (value) => value.toMap()),
      'status': status,
    };
  }

  factory TlsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TlsPropertiesResponse(
      certificate: pulumi.Input.fromValue(TlsCertificatePropertiesResponse.fromMap((map['certificate']! as Map).cast<String, dynamic>())),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

