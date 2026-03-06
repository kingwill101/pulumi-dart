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
  const GetServiceCertificatesResult({
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
      certificates: pulumi.Input.decodeList<GetServiceCertificatesCertificate>(map['certificates']!, (value) => GetServiceCertificatesCertificate.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyword: (() { final guardedValue = map['keyword']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

