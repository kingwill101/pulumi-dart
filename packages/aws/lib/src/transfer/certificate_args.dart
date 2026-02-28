// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_transfer_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_transfer_certificate_certificate_args_doc}
class CertificateArgs {
  /// The valid certificate file required for the transfer.
  final pulumi.Input<String> certificate;

  /// The optional list of certificate that make up the chain for the certificate that is being imported.
  final pulumi.Input<String>? certificateChain;

  /// A short description that helps identify the certificate.
  final pulumi.Input<String>? description;

  /// The private key associated with the certificate being imported.
  final pulumi.Input<String>? privateKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Specifies if a certificate is being used for signing or encryption. The valid values are SIGNING and ENCRYPTION.
  final pulumi.Input<String> usage;

  /// Creates a new [CertificateArgs].
  /// [certificate] The valid certificate file required for the transfer.
  /// [certificateChain] The optional list of certificate that make up the chain for the certificate that is being imported.
  /// [description] A short description that helps identify the certificate.
  /// [privateKey] The private key associated with the certificate being imported.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [usage] Specifies if a certificate is being used for signing or encryption. The valid values are SIGNING and ENCRYPTION.
  CertificateArgs({
    required String certificate,
    String? certificateChain,
    String? description,
    String? privateKey,
    String? region,
    Map<String, String>? tags,
    required String usage,
  })  : certificate = pulumi.Input.asInput<String>(certificate),
        certificateChain =
            pulumi.Input.asOptionalInput<String>(certificateChain),
        description = pulumi.Input.asOptionalInput<String>(description),
        privateKey = pulumi.Input.asOptionalInput<String>(privateKey),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        usage = pulumi.Input.asInput<String>(usage);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificate'] = certificate;
    final certificateChainValue = certificateChain;
    if (certificateChainValue != null) {
      map['certificateChain'] = certificateChainValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final privateKeyValue = privateKey;
    if (privateKeyValue != null) {
      map['privateKey'] = privateKeyValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['usage'] = usage;
    return map;
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificate: map['certificate'] as String,
      certificateChain: map['certificateChain'] == null
          ? null
          : map['certificateChain'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      privateKey:
          map['privateKey'] == null ? null : map['privateKey'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      usage: map['usage'] as String,
    );
  }
}
