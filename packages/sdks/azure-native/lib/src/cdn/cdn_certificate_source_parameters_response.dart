// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the parameters for using CDN managed certificate for securing custom domain.
class CdnCertificateSourceParametersResponse {
  /// Type of certificate used
  final pulumi.Input<String> certificateType;
  /// Expected value is 'CdnCertificateSourceParameters'.
  final pulumi.Input<String> typeName;

  /// Creates a new [CdnCertificateSourceParametersResponse].
  /// [certificateType] Type of certificate used
  /// [typeName] Expected value is 'CdnCertificateSourceParameters'.
  CdnCertificateSourceParametersResponse({
    required this.certificateType,
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateType': certificateType,
      'typeName': typeName,
    };
  }

  factory CdnCertificateSourceParametersResponse.fromMap(Map<String, dynamic> map) {
    return CdnCertificateSourceParametersResponse(
      certificateType: pulumi.Input.fromValue(map['certificateType'] as String),
      typeName: pulumi.Input.fromValue(map['typeName'] as String),
    );
  }
}

