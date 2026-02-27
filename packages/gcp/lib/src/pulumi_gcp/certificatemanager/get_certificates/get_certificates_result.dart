// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_certificates_certificate/get_certificates_certificate.dart';

/// Result data returned by getCertificates.
class GetCertificatesResult {
  /// A list of all retrieved certificates. See gcp.certificatemanager.Certificate resource for details of the available attributes.
  final List<GetCertificatesCertificate> certificates;
  final String? filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? region;

  GetCertificatesResult({
    required this.certificates,
    this.filter,
    required this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificates'] =
        Input.encodeList<GetCertificatesCertificate, Map<String, dynamic>>(
            certificates, (value) => value.toMap());
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['id'] = id;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetCertificatesResult.fromMap(Map<String, dynamic> map) {
    return GetCertificatesResult(
      certificates: Input.decodeList<GetCertificatesCertificate>(
          map['certificates'],
          (value) => GetCertificatesCertificate.fromMap(
              (value as Map).cast<String, dynamic>())),
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
