// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Client-Certification Authentication.
class GatewayPropertiesClientAuth {
  /// Whether to enable certificate verification or not
  final pulumi.Input<String>? certificateVerification;
  /// Collection of certificate resource Ids in Azure Spring Apps.
  final pulumi.Input<List<String>>? certificates;

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
      certificateVerification: (() { final guardedValue = map['certificateVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

