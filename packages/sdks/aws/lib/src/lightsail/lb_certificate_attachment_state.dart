// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LbCertificateAttachment resources.
class LbCertificateAttachmentState {
  /// Name of your SSL/TLS certificate.
  final pulumi.Input<String>? certificateName;
  /// Name of the load balancer to which you want to associate the SSL/TLS certificate.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? lbName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LbCertificateAttachmentState].
  /// [certificateName] Name of your SSL/TLS certificate.
  /// [lbName] Name of the load balancer to which you want to associate the SSL/TLS certificate.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LbCertificateAttachmentState({
    this.certificateName,
    this.lbName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': ?certificateName,
      'lbName': ?lbName,
      'region': ?region,
    };
  }

  factory LbCertificateAttachmentState.fromMap(Map<String, dynamic> map) {
    return LbCertificateAttachmentState(
      certificateName: map['certificateName'] == null ? null : (map['certificateName'] as String).input(),
      lbName: map['lbName'] == null ? null : (map['lbName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

