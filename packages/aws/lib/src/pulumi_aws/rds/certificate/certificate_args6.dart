// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Certificate.
class CertificateArgs6 {
  /// Certificate identifier. For example, `rds-ca-rsa4096-g1`. Refer to [AWS RDS (Relational Database) Certificate Identifier](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html#UsingWithRDS.SSL.CertificateIdentifier) for more information.
  final Input<String> certificateIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  CertificateArgs6({
    required this.certificateIdentifier,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateIdentifier'] = certificateIdentifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory CertificateArgs6.fromMap(Map<String, dynamic> map) {
    return CertificateArgs6(
      certificateIdentifier:
          Input.asInput<String>(map['certificateIdentifier']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
