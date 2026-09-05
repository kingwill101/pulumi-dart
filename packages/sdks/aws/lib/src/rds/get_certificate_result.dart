// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificate.
class GetCertificateResult {
  /// ARN of the certificate.
  final String? arn;
  /// Type of certificate. For example, `CA`.
  final String? certificateType;
  /// Boolean whether there is an override for the default certificate identifier.
  final bool? customerOverride;
  /// If there is an override for the default certificate identifier, when the override expires.
  final String? customerOverrideValidTill;
  final bool? defaultForNewLaunches;
  final String? id;
  final bool? latestValidTill;
  final String? region;
  /// Thumbprint of the certificate.
  final String? thumbprint;
  /// [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) of certificate starting validity date.
  final String? validFrom;
  /// [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) of certificate ending validity date.
  final String? validTill;

  /// Creates a new [GetCertificateResult].
  /// [arn] ARN of the certificate.
  /// [certificateType] Type of certificate. For example, `CA`.
  /// [customerOverride] Boolean whether there is an override for the default certificate identifier.
  /// [customerOverrideValidTill] If there is an override for the default certificate identifier, when the override expires.
  /// [defaultForNewLaunches] Optional.
  /// [id] Optional.
  /// [latestValidTill] Optional.
  /// [region] Optional.
  /// [thumbprint] Thumbprint of the certificate.
  /// [validFrom] [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) of certificate starting validity date.
  /// [validTill] [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) of certificate ending validity date.
  const GetCertificateResult({
    this.arn,
    this.certificateType,
    this.customerOverride,
    this.customerOverrideValidTill,
    this.defaultForNewLaunches,
    this.id,
    this.latestValidTill,
    this.region,
    this.thumbprint,
    this.validFrom,
    this.validTill,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'certificateType': ?certificateType,
      'customerOverride': ?customerOverride,
      'customerOverrideValidTill': ?customerOverrideValidTill,
      'defaultForNewLaunches': ?defaultForNewLaunches,
      'id': ?id,
      'latestValidTill': ?latestValidTill,
      'region': ?region,
      'thumbprint': ?thumbprint,
      'validFrom': ?validFrom,
      'validTill': ?validTill,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateType: (() { final guardedValue = map['certificateType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerOverride: (() { final guardedValue = map['customerOverride']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      customerOverrideValidTill: (() { final guardedValue = map['customerOverrideValidTill']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultForNewLaunches: (() { final guardedValue = map['defaultForNewLaunches']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestValidTill: (() { final guardedValue = map['latestValidTill']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validFrom: (() { final guardedValue = map['validFrom']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validTill: (() { final guardedValue = map['validTill']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
