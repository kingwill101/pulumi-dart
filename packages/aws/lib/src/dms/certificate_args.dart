// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_dms_certificate_certificate_args_doc}
class CertificateArgs {
  /// The certificate identifier.
  final pulumi.Input<String> certificateId;

  /// The contents of the .pem X.509 certificate file for the certificate. Either `certificate_pem` or `certificate_wallet` must be set.
  final pulumi.Input<String>? certificatePem;

  /// The contents of the Oracle Wallet certificate for use with SSL, provided as a base64-encoded String. Either `certificate_pem` or `certificate_wallet` must be set.
  final pulumi.Input<String>? certificateWallet;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CertificateArgs].
  /// [certificateId] The certificate identifier.
  /// [certificatePem] The contents of the .pem X.509 certificate file for the certificate. Either `certificate_pem` or `certificate_wallet` must be set.
  /// [certificateWallet] The contents of the Oracle Wallet certificate for use with SSL, provided as a base64-encoded String. Either `certificate_pem` or `certificate_wallet` must be set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CertificateArgs({
    required String certificateId,
    String? certificatePem,
    String? certificateWallet,
    String? region,
    Map<String, String>? tags,
  })  : certificateId = pulumi.Input.asInput<String>(certificateId),
        certificatePem = pulumi.Input.asOptionalInput<String>(certificatePem),
        certificateWallet =
            pulumi.Input.asOptionalInput<String>(certificateWallet),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificateId: map['certificateId'] as String,
      certificatePem: map['certificatePem'] == null
          ? null
          : map['certificatePem'] as String,
      certificateWallet: map['certificateWallet'] == null
          ? null
          : map['certificateWallet'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
