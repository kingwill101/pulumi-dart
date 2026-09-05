// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificate.
class GetCertificateResult {
  /// ARN of the found certificate, suitable for referencing in other resources that support ACM certificates.
  final String? arn;
  /// ACM-issued certificate.
  final String? certificate;
  /// Certificates forming the requested ACM-issued certificate's chain of trust. The chain consists of the certificate of the issuing CA and the intermediate certificates of any other subordinate CAs.
  final String? certificateChain;
  final String? domain;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<String>? keyTypes;
  final bool? mostRecent;
  final String? region;
  /// Status of the found certificate.
  final String? status;
  final List<String>? statuses;
  /// Mapping of tags for the resource.
  final Map<String, String>? tags;
  final List<String>? types;

  /// Creates a new [GetCertificateResult].
  /// [arn] ARN of the found certificate, suitable for referencing in other resources that support ACM certificates.
  /// [certificate] ACM-issued certificate.
  /// [certificateChain] Certificates forming the requested ACM-issued certificate's chain of trust. The chain consists of the certificate of the issuing CA and the intermediate certificates of any other subordinate CAs.
  /// [domain] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyTypes] Optional.
  /// [mostRecent] Optional.
  /// [region] Optional.
  /// [status] Status of the found certificate.
  /// [statuses] Optional.
  /// [tags] Mapping of tags for the resource.
  /// [types] Optional.
  const GetCertificateResult({
    this.arn,
    this.certificate,
    this.certificateChain,
    this.domain,
    this.id,
    this.keyTypes,
    this.mostRecent,
    this.region,
    this.status,
    this.statuses,
    this.tags,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'certificate': ?certificate,
      'certificateChain': ?certificateChain,
      'domain': ?domain,
      'id': ?id,
      'keyTypes': ?keyTypes,
      'mostRecent': ?mostRecent,
      'region': ?region,
      'status': ?status,
      'statuses': ?statuses,
      'tags': ?tags,
      'types': ?types,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateChain: (() { final guardedValue = map['certificateChain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyTypes: (() { final guardedValue = map['keyTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
