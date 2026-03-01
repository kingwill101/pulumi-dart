// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tls_inspect_ca_certificates_certificate.dart';

/// Result data returned by getTlsInspectCaCertificates.
class GetTlsInspectCaCertificatesResult {
  /// CA certificate ID
  final String? caCertId;
  /// A list of Tls Inspect Ca Certificate Entries. Each element contains the following attributes:
  final List<GetTlsInspectCaCertificatesCertificate> certificates;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Tls Inspect Ca Certificate IDs.
  final List<String> ids;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;

  /// Creates a new [GetTlsInspectCaCertificatesResult].
  /// [caCertId] CA certificate ID
  /// [certificates] A list of Tls Inspect Ca Certificate Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Tls Inspect Ca Certificate IDs.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetTlsInspectCaCertificatesResult({
    this.caCertId,
    required this.certificates,
    required this.id,
    required this.ids,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertId': ?caCertId,
      'certificates': pulumi.Input.encodeList<GetTlsInspectCaCertificatesCertificate, Map<String, dynamic>>(certificates, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetTlsInspectCaCertificatesResult.fromMap(Map<String, dynamic> map) {
    return GetTlsInspectCaCertificatesResult(
      caCertId: map['caCertId'] == null ? null : map['caCertId'] as String,
      certificates: pulumi.Input.decodeList<GetTlsInspectCaCertificatesCertificate>(map['certificates'], (value) => GetTlsInspectCaCertificatesCertificate.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
    );
  }
}

