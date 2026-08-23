// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_transfer_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_transfer_certificate_certificate_args_doc}
class CertificateArgs {
  /// Valid certificate file required for the transfer.
  final pulumi.Input<String> certificate;
  /// Optional list of certificate that make up the chain for the certificate that is being imported.
  final pulumi.Input<String>? certificateChain;
  /// Short description that helps identify the certificate.
  final pulumi.Input<String>? description;
  /// Private key associated with the certificate being imported.
  final pulumi.Input<String>? privateKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether a certificate is being used for signing or encryption. The valid values are SIGNING and ENCRYPTION.
  final pulumi.Input<String> usage;

  /// Creates a new [CertificateArgs].
  /// [certificate] Valid certificate file required for the transfer.
  /// [certificateChain] Optional list of certificate that make up the chain for the certificate that is being imported.
  /// [description] Short description that helps identify the certificate.
  /// [privateKey] Private key associated with the certificate being imported.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [usage] Whether a certificate is being used for signing or encryption. The valid values are SIGNING and ENCRYPTION.
  const CertificateArgs({
    required this.certificate,
    this.certificateChain,
    this.description,
    this.privateKey,
    this.region,
    this.tags,
    required this.usage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'certificateChain': ?certificateChain,
      'description': ?description,
      'privateKey': ?privateKey,
      'region': ?region,
      'tags': ?tags,
      'usage': usage,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      certificateChain: (() { final guardedValue = map['certificateChain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      usage: pulumi.Input.fromValue(map['usage'] as String),
    );
  }
}
