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
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [HsmClientCertificateArgs].
  /// [hsmClientCertificateIdentifier] The identifier of the HSM client certificate.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const HsmClientCertificateArgs({
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
      hsmClientCertificateIdentifier: pulumi.Input.fromValue(map['hsmClientCertificateIdentifier'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
