// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lightsail_lb_certificate_lb_certificate_args_doc}
/// The set of arguments for LbCertificate.
/// {@endtemplate}
/// {@macro pulumi_lightsail_lb_certificate_lb_certificate_args_doc}
class LbCertificateArgs {
  /// Domain name (e.g., example.com) for your SSL/TLS certificate.
  final pulumi.Input<String>? domainName;
  /// Load balancer name where you want to create the SSL/TLS certificate.
  final pulumi.Input<String> lbName;
  /// SSL/TLS certificate name.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Set of domains that should be SANs in the issued certificate. `domainName` attribute is automatically added as a Subject Alternative Name.
  final pulumi.Input<List<String>>? subjectAlternativeNames;

  /// Creates a new [LbCertificateArgs].
  /// [domainName] Domain name (e.g., example.com) for your SSL/TLS certificate.
  /// [lbName] Load balancer name where you want to create the SSL/TLS certificate.
  /// [name] SSL/TLS certificate name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subjectAlternativeNames] Set of domains that should be SANs in the issued certificate. `domainName` attribute is automatically added as a Subject Alternative Name.
  const LbCertificateArgs({
    this.domainName,
    required this.lbName,
    this.name,
    this.region,
    this.subjectAlternativeNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'lbName': lbName,
      'name': ?name,
      'region': ?region,
      'subjectAlternativeNames': ?subjectAlternativeNames,
    };
  }

  factory LbCertificateArgs.fromMap(Map<String, dynamic> map) {
    return LbCertificateArgs(
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lbName: pulumi.Input.fromValue(map['lbName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectAlternativeNames: (() { final guardedValue = map['subjectAlternativeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
