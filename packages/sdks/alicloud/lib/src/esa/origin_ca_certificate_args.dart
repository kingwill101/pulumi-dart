// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_origin_ca_certificate_origin_ca_certificate_args_doc}
/// The set of arguments for OriginCaCertificate.
/// {@endtemplate}
/// {@macro pulumi_esa_origin_ca_certificate_origin_ca_certificate_args_doc}
class OriginCaCertificateArgs {
  /// Certificate content.
  final pulumi.Input<String> certificate;
  /// The certificate name.
  final pulumi.Input<String>? name;
  /// Site Id
  final pulumi.Input<String> siteId;

  /// Creates a new [OriginCaCertificateArgs].
  /// [certificate] Certificate content.
  /// [name] The certificate name.
  /// [siteId] Site Id
  OriginCaCertificateArgs({
    required pulumi.Output<String> certificate,
    pulumi.Output<String>? name,
    required pulumi.Output<String> siteId,
  }) :
      certificate = pulumi.Input.asInput<String>(certificate),
      name = pulumi.Input.asOptionalInput<String>(name),
      siteId = pulumi.Input.asInput<String>(siteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'name': ?name,
      'siteId': siteId,
    };
  }

  factory OriginCaCertificateArgs.fromMap(Map<String, dynamic> map) {
    return OriginCaCertificateArgs(
      certificate: pulumi.Output.create<String>(map['certificate'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      siteId: pulumi.Output.create<String>(map['siteId'] as String),
    );
  }
}

