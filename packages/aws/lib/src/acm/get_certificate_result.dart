// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getCertificate.
class GetCertificateResult {
  /// ARN of the found certificate, suitable for referencing in other resources that support ACM certificates.
  final String arn;

  /// ACM-issued certificate.
  final String certificate;

  /// Certificates forming the requested ACM-issued certificate's chain of trust. The chain consists of the certificate of the issuing CA and the intermediate certificates of any other subordinate CAs.
  final String certificateChain;
  final String domain;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String>? keyTypes;
  final bool? mostRecent;
  final String region;

  /// Status of the found certificate.
  final String status;
  final List<String>? statuses;

  /// Mapping of tags for the resource.
  final Map<String, String> tags;
  final List<String>? types;

  /// Creates a new [GetCertificateResult].
  /// [arn] ARN of the found certificate, suitable for referencing in other resources that support ACM certificates.
  /// [certificate] ACM-issued certificate.
  /// [certificateChain] Certificates forming the requested ACM-issued certificate's chain of trust. The chain consists of the certificate of the issuing CA and the intermediate certificates of any other subordinate CAs.
  /// [domain] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyTypes] Optional.
  /// [mostRecent] Optional.
  /// [region] Required.
  /// [status] Status of the found certificate.
  /// [statuses] Optional.
  /// [tags] Mapping of tags for the resource.
  /// [types] Optional.
  GetCertificateResult({
    required this.arn,
    required this.certificate,
    required this.certificateChain,
    required this.domain,
    required this.id,
    this.keyTypes,
    this.mostRecent,
    required this.region,
    required this.status,
    this.statuses,
    required this.tags,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'certificate': certificate,
      'certificateChain': certificateChain,
      'domain': domain,
      'id': id,
      'keyTypes': ?keyTypes,
      'mostRecent': ?mostRecent,
      'region': region,
      'status': status,
      'statuses': ?statuses,
      'tags': tags,
      'types': ?types,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      arn: map['arn'] as String,
      certificate: map['certificate'] as String,
      certificateChain: map['certificateChain'] as String,
      domain: map['domain'] as String,
      id: map['id'] as String,
      keyTypes: map['keyTypes'] == null
          ? null
          : (map['keyTypes'] as List).cast<String>(),
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      region: map['region'] as String,
      status: map['status'] as String,
      statuses: map['statuses'] == null
          ? null
          : (map['statuses'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      types: map['types'] == null
          ? null
          : (map['types'] as List).cast<String>(),
    );
  }
}
