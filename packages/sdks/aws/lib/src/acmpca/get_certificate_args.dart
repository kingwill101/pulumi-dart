// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_acmpca_get_certificate_get_certificate_args_doc}
/// Arguments for getCertificate.
/// {@endtemplate}
/// {@macro pulumi_acmpca_get_certificate_get_certificate_args_doc}
class GetCertificateArgs {
  /// ARN of the certificate issued by the private certificate authority.
  final pulumi.Input<String> arn;
  /// ARN of the certificate authority.
  final pulumi.Input<String> certificateAuthorityArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetCertificateArgs].
  /// [arn] ARN of the certificate issued by the private certificate authority.
  /// [certificateAuthorityArn] ARN of the certificate authority.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetCertificateArgs({
    required this.arn,
    required this.certificateAuthorityArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'certificateAuthorityArn': certificateAuthorityArn,
      'region': ?region,
    };
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      arn: (map['arn'] as String).input(),
      certificateAuthorityArn: (map['certificateAuthorityArn'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

