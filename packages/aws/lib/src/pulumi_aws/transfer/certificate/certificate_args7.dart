// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Certificate.
class CertificateArgs7 {
  /// The valid certificate file required for the transfer.
  final Input<String> certificate;

  /// The optional list of certificate that make up the chain for the certificate that is being imported.
  final Input<String>? certificateChain;

  /// A short description that helps identify the certificate.
  final Input<String>? description;

  /// The private key associated with the certificate being imported.
  final Input<String>? privateKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Specifies if a certificate is being used for signing or encryption. The valid values are SIGNING and ENCRYPTION.
  final Input<String> usage;

  CertificateArgs7({
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

  factory CertificateArgs7.fromMap(Map<String, dynamic> map) {
    return CertificateArgs7(
      certificate: Input.asInput<String>(map['certificate']),
      certificateChain: Input.asOptionalInput<String>(map['certificateChain']),
      description: Input.asOptionalInput<String>(map['description']),
      privateKey: Input.asOptionalInput<String>(map['privateKey']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      usage: Input.asInput<String>(map['usage']),
    );
  }
}
