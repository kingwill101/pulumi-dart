// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Certificate.
class CertificateArgs3 {
  /// The certificate identifier.
  final Input<String> certificateId;

  /// The contents of the .pem X.509 certificate file for the certificate. Either <span pulumi-lang-nodejs="`certificatePem`" pulumi-lang-dotnet="`CertificatePem`" pulumi-lang-go="`certificatePem`" pulumi-lang-python="`certificate_pem`" pulumi-lang-yaml="`certificatePem`" pulumi-lang-java="`certificatePem`">`certificate_pem`</span> or <span pulumi-lang-nodejs="`certificateWallet`" pulumi-lang-dotnet="`CertificateWallet`" pulumi-lang-go="`certificateWallet`" pulumi-lang-python="`certificate_wallet`" pulumi-lang-yaml="`certificateWallet`" pulumi-lang-java="`certificateWallet`">`certificate_wallet`</span> must be set.
  final Input<String>? certificatePem;

  /// The contents of the Oracle Wallet certificate for use with SSL, provided as a base64-encoded String. Either <span pulumi-lang-nodejs="`certificatePem`" pulumi-lang-dotnet="`CertificatePem`" pulumi-lang-go="`certificatePem`" pulumi-lang-python="`certificate_pem`" pulumi-lang-yaml="`certificatePem`" pulumi-lang-java="`certificatePem`">`certificate_pem`</span> or <span pulumi-lang-nodejs="`certificateWallet`" pulumi-lang-dotnet="`CertificateWallet`" pulumi-lang-go="`certificateWallet`" pulumi-lang-python="`certificate_wallet`" pulumi-lang-yaml="`certificateWallet`" pulumi-lang-java="`certificateWallet`">`certificate_wallet`</span> must be set.
  final Input<String>? certificateWallet;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  CertificateArgs3({
    required this.certificateId,
    this.certificatePem,
    this.certificateWallet,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateId'] = certificateId;
    final certificatePemValue = certificatePem;
    if (certificatePemValue != null) {
      map['certificatePem'] = certificatePemValue;
    }
    final certificateWalletValue = certificateWallet;
    if (certificateWalletValue != null) {
      map['certificateWallet'] = certificateWalletValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory CertificateArgs3.fromMap(Map<String, dynamic> map) {
    return CertificateArgs3(
      certificateId: Input.asInput<String>(map['certificateId']),
      certificatePem: Input.asOptionalInput<String>(map['certificatePem']),
      certificateWallet:
          Input.asOptionalInput<String>(map['certificateWallet']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
