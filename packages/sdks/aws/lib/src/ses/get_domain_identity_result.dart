// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDomainIdentity.
class GetDomainIdentityResult {
  /// ARN of the domain identity.
  final String? arn;
  /// Name of the domain
  final String? domain;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// Code which when added to the domain as a TXT record will signal to SES that the owner of the domain has authorized SES to act on their behalf.
  final String? verificationToken;

  /// Creates a new [GetDomainIdentityResult].
  /// [arn] ARN of the domain identity.
  /// [domain] Name of the domain
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [verificationToken] Code which when added to the domain as a TXT record will signal to SES that the owner of the domain has authorized SES to act on their behalf.
  const GetDomainIdentityResult({
    this.arn,
    this.domain,
    this.id,
    this.region,
    this.verificationToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'domain': ?domain,
      'id': ?id,
      'region': ?region,
      'verificationToken': ?verificationToken,
    };
  }

  factory GetDomainIdentityResult.fromMap(Map<String, dynamic> map) {
    return GetDomainIdentityResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      verificationToken: (() { final guardedValue = map['verificationToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
