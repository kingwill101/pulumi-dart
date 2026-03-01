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
  /// Set of domains that should be SANs in the issued certificate. `domain_name` attribute is automatically added as a Subject Alternative Name.
  final pulumi.Input<List<String>>? subjectAlternativeNames;

  /// Creates a new [LbCertificateArgs].
  /// [domainName] Domain name (e.g., example.com) for your SSL/TLS certificate.
  /// [lbName] Load balancer name where you want to create the SSL/TLS certificate.
  /// [name] SSL/TLS certificate name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subjectAlternativeNames] Set of domains that should be SANs in the issued certificate. `domain_name` attribute is automatically added as a Subject Alternative Name.
  LbCertificateArgs({
    pulumi.Output<String>? domainName,
    required pulumi.Output<String> lbName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? subjectAlternativeNames,
  }) :
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      lbName = pulumi.Input.asInput<String>(lbName),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      subjectAlternativeNames = pulumi.Input.asOptionalInput<List<String>>(subjectAlternativeNames);

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
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      lbName: pulumi.Output.create<String>(map['lbName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subjectAlternativeNames: map['subjectAlternativeNames'] == null ? null : pulumi.Output.create<List<String>>((map['subjectAlternativeNames'] as List).cast<String>()),
    );
  }
}

