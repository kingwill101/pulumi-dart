// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_acmpca_get_certificate_authority_get_certificate_authority_args_doc}
/// Arguments for getCertificateAuthority.
/// {@endtemplate}
/// {@macro pulumi_acmpca_get_certificate_authority_get_certificate_authority_args_doc}
class GetCertificateAuthorityArgs {
  /// ARN of the certificate authority.
  final pulumi.Input<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of user-defined tags that are attached to the certificate authority.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetCertificateAuthorityArgs].
  /// [arn] ARN of the certificate authority.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of user-defined tags that are attached to the certificate authority.
  GetCertificateAuthorityArgs({
    required String arn,
    String? region,
    Map<String, String>? tags,
  }) : arn = pulumi.Input.asInput<String>(arn),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': arn, 'region': ?region, 'tags': ?tags};
  }

  factory GetCertificateAuthorityArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateAuthorityArgs(
      arn: map['arn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
