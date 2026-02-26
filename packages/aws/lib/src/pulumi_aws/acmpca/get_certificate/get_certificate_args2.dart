// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCertificate.
class GetCertificateArgs2 {
  /// ARN of the certificate issued by the private certificate authority.
  final Input<String> arn;

  /// ARN of the certificate authority.
  final Input<String> certificateAuthorityArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetCertificateArgs2({
    required this.arn,
    required this.certificateAuthorityArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['certificateAuthorityArn'] = certificateAuthorityArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetCertificateArgs2.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs2(
      arn: Input.asInput<String>(map['arn']),
      certificateAuthorityArn:
          Input.asInput<String>(map['certificateAuthorityArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
