// ignore_for_file: unused_element, unnecessary_cast


class GetServiceCertificatesCertificate {
  /// Whether the certificate was purchased from Aliyun. **Note:** From version 1.232.0, `buy_in_aliyun` takes effect only if `enable_details` is set to `true`.
  final bool buyInAliyun;
  /// The Cert of the certificate. **Note:** `cert` takes effect only if `enable_details` is set to `true`.
  final String cert;
  /// The ID of the certificate.
  final String certId;
  /// The name of the certificate.
  final String certificateName;
  /// The city in which the organization is located.
  final String city;
  /// The parent domain name of the certificate.
  final String common;
  /// The code of the country in which the organization is located.
  final String country;
  /// The time at which the certificate expires.
  final String endDate;
  /// Whether the certificate has expired.
  final bool expired;
  /// The fingerprint of the certificate.
  final String fingerprint;
  /// The ID of the Ssl Certificates Service Certificate.
  final String id;
  /// The issuer of the certificate.
  final String issuer;
  /// The Key of the certificate. **Note:** `key` takes effect only if `enable_details` is set to `true`.
  final String key;
  /// (Deprecated since v1.129.0) The name of the certificate. **Note:** Field `name` has been deprecated from provider version 1.129.0. New field `certificate_name` instead.
  final String name;
  /// The name of the organization that is associated with the certificate.
  final String orgName;
  /// The province or autonomous region in which the organization is located.
  final String province;
  /// All domain names that are bound to the certificate.
  final String sans;
  /// The time at which the certificate starts to take effect.
  final String startDate;

  /// Creates a new [GetServiceCertificatesCertificate].
  /// [buyInAliyun] Whether the certificate was purchased from Aliyun. **Note:** From version 1.232.0, `buy_in_aliyun` takes effect only if `enable_details` is set to `true`.
  /// [cert] The Cert of the certificate. **Note:** `cert` takes effect only if `enable_details` is set to `true`.
  /// [certId] The ID of the certificate.
  /// [certificateName] The name of the certificate.
  /// [city] The city in which the organization is located.
  /// [common] The parent domain name of the certificate.
  /// [country] The code of the country in which the organization is located.
  /// [endDate] The time at which the certificate expires.
  /// [expired] Whether the certificate has expired.
  /// [fingerprint] The fingerprint of the certificate.
  /// [id] The ID of the Ssl Certificates Service Certificate.
  /// [issuer] The issuer of the certificate.
  /// [key] The Key of the certificate. **Note:** `key` takes effect only if `enable_details` is set to `true`.
  /// [name] (Deprecated since v1.129.0) The name of the certificate. **Note:** Field `name` has been deprecated from provider version 1.129.0. New field `certificate_name` instead.
  /// [orgName] The name of the organization that is associated with the certificate.
  /// [province] The province or autonomous region in which the organization is located.
  /// [sans] All domain names that are bound to the certificate.
  /// [startDate] The time at which the certificate starts to take effect.
  GetServiceCertificatesCertificate({
    required this.buyInAliyun,
    required this.cert,
    required this.certId,
    required this.certificateName,
    required this.city,
    required this.common,
    required this.country,
    required this.endDate,
    required this.expired,
    required this.fingerprint,
    required this.id,
    required this.issuer,
    required this.key,
    required this.name,
    required this.orgName,
    required this.province,
    required this.sans,
    required this.startDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buyInAliyun': buyInAliyun,
      'cert': cert,
      'certId': certId,
      'certificateName': certificateName,
      'city': city,
      'common': common,
      'country': country,
      'endDate': endDate,
      'expired': expired,
      'fingerprint': fingerprint,
      'id': id,
      'issuer': issuer,
      'key': key,
      'name': name,
      'orgName': orgName,
      'province': province,
      'sans': sans,
      'startDate': startDate,
    };
  }

  factory GetServiceCertificatesCertificate.fromMap(Map<String, dynamic> map) {
    return GetServiceCertificatesCertificate(
      buyInAliyun: map['buyInAliyun'] as bool,
      cert: map['cert'] as String,
      certId: map['certId'] as String,
      certificateName: map['certificateName'] as String,
      city: map['city'] as String,
      common: map['common'] as String,
      country: map['country'] as String,
      endDate: map['endDate'] as String,
      expired: map['expired'] as bool,
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as String,
      issuer: map['issuer'] as String,
      key: map['key'] as String,
      name: map['name'] as String,
      orgName: map['orgName'] as String,
      province: map['province'] as String,
      sans: map['sans'] as String,
      startDate: map['startDate'] as String,
    );
  }
}

