// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_additional_certificate_additional_certificate_args_doc}
/// The set of arguments for AdditionalCertificate.
/// {@endtemplate}
/// {@macro pulumi_ga_additional_certificate_additional_certificate_args_doc}
class AdditionalCertificateArgs {
  /// The ID of the GA instance.
  final pulumi.Input<String> acceleratorId;
  /// The Certificate ID. **NOTE:** From version 1.209.1, `certificate_id` can be modified.
  final pulumi.Input<String> certificateId;
  /// The domain name specified by the certificate. **NOTE:** You can associate each domain name with only one additional certificate.
  final pulumi.Input<String> domain;
  /// The ID of the listener. **NOTE:** Only HTTPS listeners support this parameter.
  final pulumi.Input<String> listenerId;

  /// Creates a new [AdditionalCertificateArgs].
  /// [acceleratorId] The ID of the GA instance.
  /// [certificateId] The Certificate ID. **NOTE:** From version 1.209.1, `certificate_id` can be modified.
  /// [domain] The domain name specified by the certificate. **NOTE:** You can associate each domain name with only one additional certificate.
  /// [listenerId] The ID of the listener. **NOTE:** Only HTTPS listeners support this parameter.
  const AdditionalCertificateArgs({
    required this.acceleratorId,
    required this.certificateId,
    required this.domain,
    required this.listenerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'certificateId': certificateId,
      'domain': domain,
      'listenerId': listenerId,
    };
  }

  factory AdditionalCertificateArgs.fromMap(Map<String, dynamic> map) {
    return AdditionalCertificateArgs(
      acceleratorId: pulumi.Input.fromValue(map['acceleratorId'] as String),
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      listenerId: pulumi.Input.fromValue(map['listenerId'] as String),
    );
  }
}

