// ignore_for_file: unused_element, unnecessary_cast


class GetAdditionalCertificatesCertificate {
  /// The ID of the GA instance.
  final String acceleratorId;
  /// The Certificate ID.
  final String certificateId;
  /// The domain name specified by the certificate.
  final String domain;
  /// The ID of the Additional Certificate. The value formats as `<accelerator_id>:<listener_id>:<domain>`.
  final String id;
  /// The ID of the listener. Only HTTPS listeners support this parameter.
  final String listenerId;

  /// Creates a new [GetAdditionalCertificatesCertificate].
  /// [acceleratorId] The ID of the GA instance.
  /// [certificateId] The Certificate ID.
  /// [domain] The domain name specified by the certificate.
  /// [id] The ID of the Additional Certificate. The value formats as `<accelerator_id>:<listener_id>:<domain>`.
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

  factory GetAdditionalCertificatesCertificate.fromMap(Map<String, dynamic> map) {
    return GetAdditionalCertificatesCertificate(
      acceleratorId: map['acceleratorId'] as String,
      certificateId: map['certificateId'] as String,
      domain: map['domain'] as String,
      id: map['id'] as String,
      listenerId: map['listenerId'] as String,
    );
  }
}

