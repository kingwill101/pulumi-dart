// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Certificate.
class CertificateTransferArgs {
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

  CertificateTransferArgs({
    required this.certificate,
    this.certificateChain,
    this.description,
    this.privateKey,
    this.region,
    this.tags,
    required this.usage,
  });

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

  factory CertificateTransferArgs.fromMap(Map<String, dynamic> map) {
    return CertificateTransferArgs(
      certificate: pulumi.Input.asInput<String>(map['certificate']),
      certificateChain:
          pulumi.Input.asOptionalInput<String>(map['certificateChain']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      privateKey: pulumi.Input.asOptionalInput<String>(map['privateKey']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      usage: pulumi.Input.asInput<String>(map['usage']),
    );
  }
}
