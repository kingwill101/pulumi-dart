// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Client-Certification Authentication.
class GatewayPropertiesResponseClientAuth {
  /// Whether to enable certificate verification or not
  final pulumi.Input<String>? certificateVerification;
  /// Collection of certificate resource Ids in Azure Spring Apps.
  final pulumi.Input<List<String>>? certificates;

  /// Creates a new [GatewayPropertiesResponseClientAuth].
  /// [certificateVerification] Whether to enable certificate verification or not
  /// [certificates] Collection of certificate resource Ids in Azure Spring Apps.
  GatewayPropertiesResponseClientAuth({
    this.certificateVerification,
    this.certificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateVerification': ?certificateVerification,
      'certificates': ?certificates,
    };
  }

  factory GatewayPropertiesResponseClientAuth.fromMap(Map<String, dynamic> map) {
    return GatewayPropertiesResponseClientAuth(
      certificateVerification: map['certificateVerification'] == null ? null : (map['certificateVerification']! as String).input(),
      certificates: map['certificates'] == null ? null : ((map['certificates']! as List).cast<String>()).input(),
    );
  }
}

