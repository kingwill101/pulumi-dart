// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_index_certificate_certificate_args_doc}
class CertificateArgs {
  /// The full PEM-formatted trust chain
  /// between the certificate authority's certificate and your domain's TLS
  /// certificate. Only valid when type is `custom`.
  final pulumi.Input<String>? certificateChain;
  /// List of fully qualified domain names (FQDNs) for
  /// which the certificate will be issued. The domains must be managed using
  /// DigitalOcean's DNS. Only valid when type is `lets_encrypt`.
  final pulumi.Input<List<String>>? domains;
  /// The contents of a PEM-formatted public
  /// TLS certificate. Only valid when type is `custom`.
  final pulumi.Input<String>? leafCertificate;
  /// The name of the certificate for identification.
  final pulumi.Input<String>? name;
  /// The contents of a PEM-formatted private-key
  /// corresponding to the SSL certificate. Only valid when type is `custom`.
  final pulumi.Input<String>? privateKey;
  /// The type of certificate to provision. Can be either
  /// `custom` or `lets_encrypt`. Defaults to `custom`.
  final pulumi.Input<String>? type;

  /// Creates a new [CertificateArgs].
  /// [certificateChain] The full PEM-formatted trust chain
  /// [domains] List of fully qualified domain names (FQDNs) for
  /// [leafCertificate] The contents of a PEM-formatted public
  /// [name] The name of the certificate for identification.
  /// [privateKey] The contents of a PEM-formatted private-key
  /// [type] The type of certificate to provision. Can be either
  CertificateArgs({
    String? certificateChain,
    List<String>? domains,
    String? leafCertificate,
    String? name,
    String? privateKey,
    String? type,
  }) :
      certificateChain = pulumi.Input.asOptionalInput<String>(certificateChain),
      domains = pulumi.Input.asOptionalInput<List<String>>(domains),
      leafCertificate = pulumi.Input.asOptionalInput<String>(leafCertificate),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateKey = pulumi.Input.asOptionalInput<String>(privateKey),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateChain': ?certificateChain,
      'domains': ?domains,
      'leafCertificate': ?leafCertificate,
      'name': ?name,
      'privateKey': ?privateKey,
      'type': ?type,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificateChain: map['certificateChain'] == null ? null : map['certificateChain'] as String,
      domains: map['domains'] == null ? null : (map['domains'] as List).cast<String>(),
      leafCertificate: map['leafCertificate'] == null ? null : map['leafCertificate'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateKey: map['privateKey'] == null ? null : map['privateKey'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

