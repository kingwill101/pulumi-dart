// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAdditionalCertificatesCertificate {
  /// The ID of the GA instance.
  final pulumi.Input<String> acceleratorId;

  /// The Certificate ID.
  final pulumi.Input<String> certificateId;

  /// The domain name specified by the certificate.
  final pulumi.Input<String> domain;

  /// The ID of the Additional Certificate. The value formats as `&lt;accelerator_id&gt;:&lt;listener_id&gt;:&lt;domain&gt;`.
  final pulumi.Input<String> id;

  /// The ID of the listener. Only HTTPS listeners support this parameter.
  final pulumi.Input<String> listenerId;

  /// Creates a new [GetAdditionalCertificatesCertificate].
  /// [acceleratorId] The ID of the GA instance.
  /// [certificateId] The Certificate ID.
  /// [domain] The domain name specified by the certificate.
  /// [id] The ID of the Additional Certificate. The value formats as `&lt;accelerator_id&gt;:&lt;listener_id&gt;:&lt;domain&gt;`.
  /// [listenerId] The ID of the listener. Only HTTPS listeners support this parameter.
  GetAdditionalCertificatesCertificate({
    required this.acceleratorId,
    required this.certificateId,
    required this.domain,
    required this.id,
    required this.listenerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'certificateId': certificateId,
      'domain': domain,
      'id': id,
      'listenerId': listenerId,
    };
  }

  factory GetAdditionalCertificatesCertificate.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAdditionalCertificatesCertificate(
      acceleratorId: pulumi.Input.fromValue(map['acceleratorId'] as String),
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      listenerId: pulumi.Input.fromValue(map['listenerId'] as String),
    );
  }
}
