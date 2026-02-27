// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCertificate.
class GetCertificateAcmpcaArgs {
  /// ARN of the certificate issued by the private certificate authority.
  final pulumi.Input<String> arn;

  /// ARN of the certificate authority.
  final pulumi.Input<String> certificateAuthorityArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetCertificateAcmpcaArgs({
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

  factory GetCertificateAcmpcaArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateAcmpcaArgs(
      arn: pulumi.Input.asInput<String>(map['arn']),
      certificateAuthorityArn:
          pulumi.Input.asInput<String>(map['certificateAuthorityArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
