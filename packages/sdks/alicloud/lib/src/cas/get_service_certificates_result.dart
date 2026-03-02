// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_certificates_certificate.dart';

/// Result data returned by getServiceCertificates.
class GetServiceCertificatesResult {
  /// A list of Ssl Certificates Service Certificates. Each element contains the following attributes:
  final List<GetServiceCertificatesCertificate> certificates;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? keyword;
  final String? lang;
  final String? nameRegex;
  /// A list of Ssl Certificates names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetServiceCertificatesResult].
  /// [certificates] A list of Ssl Certificates Service Certificates. Each element contains the following attributes:
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [keyword] Optional.
  /// [lang] Optional.
  /// [nameRegex] Optional.
  /// [names] A list of Ssl Certificates names.
  /// [outputFile] Optional.
  GetServiceCertificatesResult({
    required this.certificates,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.keyword,
    this.lang,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': pulumi.Input.encodeList<GetServiceCertificatesCertificate, Map<String, dynamic>>(certificates, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'keyword': ?keyword,
      'lang': ?lang,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetServiceCertificatesResult.fromMap(Map<String, dynamic> map) {
    return GetServiceCertificatesResult(
      certificates: pulumi.Input.decodeList<GetServiceCertificatesCertificate>(map['certificates'], (value) => GetServiceCertificatesCertificate.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyword: map['keyword'] == null ? null : map['keyword']! as String,
      lang: map['lang'] == null ? null : map['lang']! as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
    );
  }
}

