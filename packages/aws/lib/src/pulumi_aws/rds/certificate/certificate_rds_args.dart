// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Certificate.
class CertificateRdsArgs {
  /// Certificate identifier. For example, `rds-ca-rsa4096-g1`. Refer to [AWS RDS (Relational Database) Certificate Identifier](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html#UsingWithRDS.SSL.CertificateIdentifier) for more information.
  final pulumi.Input<String> certificateIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  CertificateRdsArgs({
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

  factory CertificateRdsArgs.fromMap(Map<String, dynamic> map) {
    return CertificateRdsArgs(
      certificateIdentifier:
          pulumi.Input.asInput<String>(map['certificateIdentifier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
