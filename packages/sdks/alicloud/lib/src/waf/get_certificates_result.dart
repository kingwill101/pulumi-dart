// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificates_certificate.dart';

/// Result data returned by getCertificates.
class GetCertificatesResult {
  /// A list of Waf Certificates. Each element contains the following attributes:
  final List<GetCertificatesCertificate> certificates;
  /// The domain that you want to add to WAF.
  final String? domain;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// WAF instance ID.
  final String instanceId;
  final String? nameRegex;
  /// A list of Certificate names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetCertificatesResult].
  /// [certificates] A list of Waf Certificates. Each element contains the following attributes:
  /// [domain] The domain that you want to add to WAF.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] WAF instance ID.
  /// [nameRegex] Optional.
  /// [names] A list of Certificate names.
  /// [outputFile] Optional.
  GetCertificatesResult({
    required this.certificates,
    this.domain,
    required this.id,
    required this.ids,
    required this.instanceId,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': pulumi.Input.encodeList<GetCertificatesCertificate, Map<String, dynamic>>(certificates, (value) => value.toMap()),
      'domain': ?domain,
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetCertificatesResult.fromMap(Map<String, dynamic> map) {
    return GetCertificatesResult(
      certificates: pulumi.Input.decodeList<GetCertificatesCertificate>(map['certificates'], (value) => GetCertificatesCertificate.fromMap((value as Map).cast<String, dynamic>())),
      domain: map['domain'] == null ? null : map['domain'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

