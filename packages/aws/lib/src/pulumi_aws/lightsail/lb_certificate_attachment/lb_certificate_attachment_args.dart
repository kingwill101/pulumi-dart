// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LbCertificateAttachment.
class LbCertificateAttachmentArgs {
  /// Name of your SSL/TLS certificate.
  final pulumi.Input<String> certificateName;

  /// Name of the load balancer to which you want to associate the SSL/TLS certificate.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> lbName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  LbCertificateAttachmentArgs({
    required this.certificateName,
    required this.lbName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateName'] = certificateName;
    map['lbName'] = lbName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory LbCertificateAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return LbCertificateAttachmentArgs(
      certificateName: pulumi.Input.asInput<String>(map['certificateName']),
      lbName: pulumi.Input.asInput<String>(map['lbName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
