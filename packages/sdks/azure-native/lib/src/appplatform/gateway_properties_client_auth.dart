// ignore_for_file: unused_element, unnecessary_cast


/// Client-Certification Authentication.
class GatewayPropertiesClientAuth {
  /// Whether to enable certificate verification or not
  final String? certificateVerification;
  /// Collection of certificate resource Ids in Azure Spring Apps.
  final List<String>? certificates;

  /// Creates a new [GatewayPropertiesClientAuth].
  /// [certificateVerification] Whether to enable certificate verification or not
  /// [certificates] Collection of certificate resource Ids in Azure Spring Apps.
  GatewayPropertiesClientAuth({
    this.certificateVerification,
    this.certificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateVerification': ?certificateVerification,
      'certificates': ?certificates,
    };
  }

  factory GatewayPropertiesClientAuth.fromMap(Map<String, dynamic> map) {
    return GatewayPropertiesClientAuth(
      certificateVerification: map['certificateVerification'] == null ? null : map['certificateVerification'] as String,
      certificates: map['certificates'] == null ? null : (map['certificates'] as List).cast<String>(),
    );
  }
}

