// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_additional_certificates_certificate.dart';

/// Result data returned by getAdditionalCertificates.
class GetAdditionalCertificatesResult {
  /// The ID of the GA instance.
  final String acceleratorId;
  /// A list of Ga Additional Certificates. Each element contains the following attributes:
  final List<GetAdditionalCertificatesCertificate> certificates;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// The ID of the listener. Only HTTPS listeners support this parameter.
  final String listenerId;
  final String? outputFile;

  /// Creates a new [GetAdditionalCertificatesResult].
  /// [acceleratorId] The ID of the GA instance.
  /// [certificates] A list of Ga Additional Certificates. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [listenerId] The ID of the listener. Only HTTPS listeners support this parameter.
  /// [outputFile] Optional.
  const GetAdditionalCertificatesResult({
    required this.acceleratorId,
    required this.certificates,
    required this.id,
    required this.ids,
    required this.listenerId,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'certificates': pulumi.Input.encodeList<GetAdditionalCertificatesCertificate, Map<String, dynamic>>(certificates, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'listenerId': listenerId,
      'outputFile': ?outputFile,
    };
  }

  factory GetAdditionalCertificatesResult.fromMap(Map<String, dynamic> map) {
    return GetAdditionalCertificatesResult(
      acceleratorId: map['acceleratorId'] as String,
      certificates: pulumi.Input.decodeList<GetAdditionalCertificatesCertificate>(map['certificates']!, (value) => GetAdditionalCertificatesCertificate.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      listenerId: map['listenerId'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

