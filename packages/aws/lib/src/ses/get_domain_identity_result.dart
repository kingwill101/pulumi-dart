// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDomainIdentity.
class GetDomainIdentityResult {
  /// ARN of the domain identity.
  final String arn;

  /// Name of the domain
  final String domain;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Code which when added to the domain as a TXT record will signal to SES that the owner of the domain has authorized SES to act on their behalf.
  final String verificationToken;

  /// Creates a new [GetDomainIdentityResult].
  /// [arn] ARN of the domain identity.
  /// [domain] Name of the domain
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [verificationToken] Code which when added to the domain as a TXT record will signal to SES that the owner of the domain has authorized SES to act on their behalf.
  GetDomainIdentityResult({
    required this.arn,
    required this.domain,
    required this.id,
    required this.region,
    required this.verificationToken,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['domain'] = domain;
    map['id'] = id;
    map['region'] = region;
    map['verificationToken'] = verificationToken;
    return map;
  }

  factory GetDomainIdentityResult.fromMap(Map<String, dynamic> map) {
    return GetDomainIdentityResult(
      arn: map['arn'] as String,
      domain: map['domain'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      verificationToken: map['verificationToken'] as String,
    );
  }
}
