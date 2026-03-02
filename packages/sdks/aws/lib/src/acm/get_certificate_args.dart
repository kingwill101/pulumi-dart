// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_acm_get_certificate_get_certificate_args_doc}
/// Arguments for getCertificate.
/// {@endtemplate}
/// {@macro pulumi_acm_get_certificate_get_certificate_args_doc}
class GetCertificateArgs {
  /// Domain of the certificate to look up. If set and no certificate is found with this name, an error will be returned.
  final pulumi.Input<String>? domain;
  /// List of key algorithms to filter certificates. By default, ACM does not return all certificate types when searching. See the [ACM API Reference](https://docs.aws.amazon.com/acm/latest/APIReference/API_CertificateDetail.html#ACM-Type-CertificateDetail-KeyAlgorithm) for supported key algorithms.
  final pulumi.Input<List<String>>? keyTypes;
  /// If set to true, it sorts the certificates matched by previous criteria by the NotBefore field, returning only the most recent one. If set to false, it returns an error if more than one certificate is found. Defaults to false.
  final pulumi.Input<bool>? mostRecent;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of statuses on which to filter the returned list. Valid values are `PENDING_VALIDATION`, `ISSUED`,
  /// `INACTIVE`, `EXPIRED`, `VALIDATION_TIMED_OUT`, `REVOKED` and `FAILED`. If no value is specified, only certificates in the `ISSUED` state
  /// are returned.
  final pulumi.Input<List<String>>? statuses;
  /// A mapping of tags, each pair of which must exactly match a pair on the desired certificates.
  final pulumi.Input<Map<String, String>>? tags;
  /// List of types on which to filter the returned list. Valid values are `AMAZON_ISSUED`, `PRIVATE`, and `IMPORTED`.
  final pulumi.Input<List<String>>? types;

  /// Creates a new [GetCertificateArgs].
  /// [domain] Domain of the certificate to look up. If set and no certificate is found with this name, an error will be returned.
  /// [keyTypes] List of key algorithms to filter certificates. By default, ACM does not return all certificate types when searching. See the [ACM API Reference](https://docs.aws.amazon.com/acm/latest/APIReference/API_CertificateDetail.html#ACM-Type-CertificateDetail-KeyAlgorithm) for supported key algorithms.
  /// [mostRecent] If set to true, it sorts the certificates matched by previous criteria by the NotBefore field, returning only the most recent one. If set to false, it returns an error if more than one certificate is found. Defaults to false.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [statuses] List of statuses on which to filter the returned list. Valid values are `PENDING_VALIDATION`, `ISSUED`,
  /// [tags] A mapping of tags, each pair of which must exactly match a pair on the desired certificates.
  /// [types] List of types on which to filter the returned list. Valid values are `AMAZON_ISSUED`, `PRIVATE`, and `IMPORTED`.
  GetCertificateArgs({
    this.domain,
    this.keyTypes,
    this.mostRecent,
    this.region,
    this.statuses,
    this.tags,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'keyTypes': ?keyTypes,
      'mostRecent': ?mostRecent,
      'region': ?region,
      'statuses': ?statuses,
      'tags': ?tags,
      'types': ?types,
    };
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      domain: map['domain'] == null ? null : ((map['domain'] as String).input()).input(),
      keyTypes: map['keyTypes'] == null ? null : (((map['keyTypes'] as List).cast<String>()).input()).input(),
      mostRecent: map['mostRecent'] == null ? null : ((map['mostRecent'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      statuses: map['statuses'] == null ? null : (((map['statuses'] as List).cast<String>()).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      types: map['types'] == null ? null : (((map['types'] as List).cast<String>()).input()).input(),
    );
  }
}

