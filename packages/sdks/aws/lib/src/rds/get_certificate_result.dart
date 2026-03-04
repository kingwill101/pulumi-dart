// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getCertificate.
class GetCertificateResult {
  /// ARN of the certificate.
  final String arn;

  /// Type of certificate. For example, `CA`.
  final String certificateType;

  /// Boolean whether there is an override for the default certificate identifier.
  final bool customerOverride;

  /// If there is an override for the default certificate identifier, when the override expires.
  final String customerOverrideValidTill;
  final bool? defaultForNewLaunches;
  final String id;
  final bool? latestValidTill;
  final String region;

  /// Thumbprint of the certificate.
  final String thumbprint;

  /// [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) of certificate starting validity date.
  final String validFrom;

  /// [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) of certificate ending validity date.
  final String validTill;

  /// Creates a new [GetCertificateResult].
  /// [arn] ARN of the certificate.
  /// [certificateType] Type of certificate. For example, `CA`.
  /// [customerOverride] Boolean whether there is an override for the default certificate identifier.
  /// [customerOverrideValidTill] If there is an override for the default certificate identifier, when the override expires.
  /// [defaultForNewLaunches] Optional.
  /// [id] Required.
  /// [latestValidTill] Optional.
  /// [region] Required.
  /// [thumbprint] Thumbprint of the certificate.
  /// [validFrom] [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) of certificate starting validity date.
  /// [validTill] [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) of certificate ending validity date.
  GetCertificateResult({
    required this.arn,
    required this.certificateType,
    required this.customerOverride,
    required this.customerOverrideValidTill,
    this.defaultForNewLaunches,
    required this.id,
    this.latestValidTill,
    required this.region,
    required this.thumbprint,
    required this.validFrom,
    required this.validTill,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'certificateType': certificateType,
      'customerOverride': customerOverride,
      'customerOverrideValidTill': customerOverrideValidTill,
      'defaultForNewLaunches': ?defaultForNewLaunches,
      'id': id,
      'latestValidTill': ?latestValidTill,
      'region': region,
      'thumbprint': thumbprint,
      'validFrom': validFrom,
      'validTill': validTill,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      arn: map['arn'] as String,
      certificateType: map['certificateType'] as String,
      customerOverride: map['customerOverride'] as bool,
      customerOverrideValidTill: map['customerOverrideValidTill'] as String,
      defaultForNewLaunches: (() {
        final guardedValue = map['defaultForNewLaunches'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      latestValidTill: (() {
        final guardedValue = map['latestValidTill'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      region: map['region'] as String,
      thumbprint: map['thumbprint'] as String,
      validFrom: map['validFrom'] as String,
      validTill: map['validTill'] as String,
    );
  }
}
