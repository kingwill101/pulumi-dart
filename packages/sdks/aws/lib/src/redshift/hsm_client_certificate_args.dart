// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_hsm_client_certificate_hsm_client_certificate_args_doc}
/// The set of arguments for HsmClientCertificate.
/// {@endtemplate}
/// {@macro pulumi_redshift_hsm_client_certificate_hsm_client_certificate_args_doc}
class HsmClientCertificateArgs {
  /// The identifier of the HSM client certificate.
  final pulumi.Input<String> hsmClientCertificateIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [HsmClientCertificateArgs].
  /// [hsmClientCertificateIdentifier] The identifier of the HSM client certificate.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  HsmClientCertificateArgs({
    required this.hsmClientCertificateIdentifier,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hsmClientCertificateIdentifier': hsmClientCertificateIdentifier,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory HsmClientCertificateArgs.fromMap(Map<String, dynamic> map) {
    return HsmClientCertificateArgs(
      hsmClientCertificateIdentifier: (map['hsmClientCertificateIdentifier'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

