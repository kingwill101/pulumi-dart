// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lightsail_lb_certificate_attachment_lb_certificate_attachment_args_doc}
/// The set of arguments for LbCertificateAttachment.
/// {@endtemplate}
/// {@macro pulumi_lightsail_lb_certificate_attachment_lb_certificate_attachment_args_doc}
class LbCertificateAttachmentArgs {
  /// Name of your SSL/TLS certificate.
  final pulumi.Input<String> certificateName;
  /// Name of the load balancer to which you want to associate the SSL/TLS certificate.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> lbName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [LbCertificateAttachmentArgs].
  /// [certificateName] Name of your SSL/TLS certificate.
  /// [lbName] Name of the load balancer to which you want to associate the SSL/TLS certificate.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const LbCertificateAttachmentArgs({
    required this.certificateName,
    required this.lbName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'lbName': lbName,
      'region': ?region,
    };
  }

  factory LbCertificateAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return LbCertificateAttachmentArgs(
      certificateName: pulumi.Input.fromValue(map['certificateName'] as String),
      lbName: pulumi.Input.fromValue(map['lbName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
