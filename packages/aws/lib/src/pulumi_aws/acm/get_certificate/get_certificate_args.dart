// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCertificate.
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
    final map = <String, dynamic>{};
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    final keyTypesValue = keyTypes;
    if (keyTypesValue != null) {
      map['keyTypes'] = keyTypesValue;
    }
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final statusesValue = statuses;
    if (statusesValue != null) {
      map['statuses'] = statusesValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final typesValue = types;
    if (typesValue != null) {
      map['types'] = typesValue;
    }
    return map;
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      domain: pulumi.Input.asOptionalInput<String>(map['domain']),
      keyTypes: pulumi.Input.asOptionalInput<List<String>>(map['keyTypes']),
      mostRecent: pulumi.Input.asOptionalInput<bool>(map['mostRecent']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      statuses: pulumi.Input.asOptionalInput<List<String>>(map['statuses']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      types: pulumi.Input.asOptionalInput<List<String>>(map['types']),
    );
  }
}
