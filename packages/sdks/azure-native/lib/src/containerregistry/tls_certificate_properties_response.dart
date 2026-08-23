// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The TLS certificate properties of the connected registry login server.
class TlsCertificatePropertiesResponse {
  /// Indicates the location of the certificates.
  final pulumi.Input<String> location;
  /// The type of certificate location.
  final pulumi.Input<String> type;

  /// Creates a new [TlsCertificatePropertiesResponse].
  /// [location] Indicates the location of the certificates.
  /// [type] The type of certificate location.
  const TlsCertificatePropertiesResponse({
    required this.location,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'type': type,
    };
  }

  factory TlsCertificatePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TlsCertificatePropertiesResponse(
      location: pulumi.Input.fromValue(map['location'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
